cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.74"
  sha256 arm:          "a4aaa491a00a29cb90a1346e6916213909cbc588d3ccf6826ba9e80e2d52a7ad",
         intel:        "c9744ec27748426e0baf60ba9267e7153914769bb60ccc013821c99f5102e9c3",
         arm64_linux:  "a97288261912f04b7c83b95371ac6571b6f60cedbb50d19e0c4b8c8da8e70a4f",
         x86_64_linux: "2d8df63772b0f764af420f6bde95b95a01bc21b4ba03c5771cec831deef28b38"

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
