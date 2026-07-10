cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.52"
  sha256 arm:          "f957a758897d24acb927225b804e9724a94a9e51be9693d0bace8b2f1276fc15",
         intel:        "dfe7bd78423437dc0a79b8ceea81eb01f91ff721dc08c1ad81a0371af6bba1b3",
         arm64_linux:  "c47c3f45e6e7d2bc662fd7445c4e6d076e2509d724054d9490617168a37aa103",
         x86_64_linux: "65133ab3edc840c23a6d34f4e9ffdd83566a62606b74849dc8f5fb943d368292"

  url_end = on_system_conditional macos: ".dmg", linux: ".AppImage"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}#{url_end}",
      verified: "github.com/t8y2/dbx/"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
    ]
  end

  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end
end
