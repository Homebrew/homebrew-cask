cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.84"
  sha256 arm:          "64c040c7b3e08cf738729c1881fe642352c8404d3fb55aa7b493d680af896115",
         intel:        "86e18212b4df050951759e260c65f3ca1d46e2a8544085c87f07d06b3033baf9",
         arm64_linux:  "471eb3982b6725f7003e2f2b3893cc02c47738349e16f9f15f01c3849fbc6e02",
         x86_64_linux: "6c0763160dcf1f699369a38d93cf08f89c6c9181783315ff59f6d06e150b4c73"

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
      "~/Library/WebKit/com.dbx.app",
    ]
  end
  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.#{os}"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
