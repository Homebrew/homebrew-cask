cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.95"
  sha256 arm:          "e22a9807ddb4d7548370e199b6a6a2ac1380312b53924a650702a89eeaeb52f5",
         intel:        "7f2ba6c814c26a1018640d2f12ca04bbddaf57fd48f0573c953356a223c5bd31",
         arm64_linux:  "da482795bea89f106643b12ed245680c577e64f5ee7a730fbada48f7026e41c3",
         x86_64_linux: "2ab0051885874c2574a5438fba43237e484e60ccdef838aa53f07c256c75dca3"

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
