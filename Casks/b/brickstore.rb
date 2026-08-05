cask "brickstore" do
  os macos: "macOS", linux: "Linux-AppImage"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "2026.7.1"

  on_macos do
    sha256 "d3c76b2c49a57b01a99a269d0c2677f019a41899da010a780f8f6b11d9dffd06"

    depends_on macos: :ventura

    app "BrickStore.app"

    zap trash: [
      "~/Library/Preferences/de.brickforge.brickstore.plist",
      "~/Library/Preferences/org.brickstore.BrickStore.plist",
      "~/Library/Saved Application State/de.brickforge.brickstore.savedState",
    ]
  end
  on_linux do
    sha256 "54116721cf8611b93600b960f72d34a1cf649228eae23d4d1c4e2f0ff760f77e"

    depends_on arch: :x86_64

    app_image "Linux-AppImage-BrickStore-#{version}-x86_64.AppImage", target: "BrickStore.AppImage"
  end

  url "https://github.com/rgriebl/brickstore/releases/download/v#{version}/#{os}-BrickStore-#{version}#{url_end}",
      verified: "github.com/rgriebl/brickstore/"
  name "BrickStore"
  desc "BrickLink offline management tool"
  homepage "https://www.brickstore.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
