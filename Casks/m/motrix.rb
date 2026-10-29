cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.1.1"
  sha256 arm:          "788ef248d602079ded03c1b248080f1b424e04cf0d2541ba50be9eafa060ece8",
         intel:        "ddd75d6e6a6bae869a7da6da6da9c32b39b5a6906f1eb7228ff491b2db28524c",
         arm64_linux:  "8bd3ad10a3f45ebda263cf56d6754c09524eeb4416264cb6f1244d164d128e87",
         x86_64_linux: "e9dd4acd436f5f95127bed6a7975357fd513887611a88b9ca0b22d0cd319b092"

  on_macos do
    depends_on macos: :ventura

    app "Motrix.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.motrix.native.sfl*",
      "~/Library/Application Support/Motrix",
      "~/Library/Caches/app.motrix.native",
      "~/Library/Logs/Motrix",
      "~/Library/Preferences/app.motrix.native.plist",
      "~/Library/Saved Application State/app.motrix.native.savedState",
    ]
  end
  on_linux do
    app_image "Motrix-#{version}-#{arch}.AppImage", target: "Motrix.AppImage"

    zap trash: "~/.config/Motrix"
  end

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}-#{arch}.#{os}"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "motrix@beta"
end
