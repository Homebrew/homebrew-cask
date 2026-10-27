cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.58"
  sha256 arm:          "8e0933cb87980bb8b0fe9b197b809a6156ef6dc3c7e5987112f57a1b88577d46",
         intel:        "50489cdb9cd954a557e19e898eaebce05acbb526c41b49b0f3037ddfb65f9240",
         arm64_linux:  "1ba321b5c9f3a822ddaeccd24a64769b97f0f6065a6466d73b69aea0859756c1",
         x86_64_linux: "17dc085467fb705e6cf6935aca54f6ab535c87401412562fbc154ed47ef1ced2"

  on_macos do
    auto_updates true

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
