cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "7.93"
  sha256 arm:   "99da5c2e5f1dcea8719a730ff8dcbbb585b24559fe3c5bdb72f8c5fefc4606e9",
         intel: "1d463da96aae5cc43b5968e16db97406730ca399f4e8a4ec54deb76cfd95a796"

  url "https://download.pinegrow.com/PinegrowMac#{arch}.#{version}.dmg"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url "https://docs.pinegrow.com/wp-json/wp/v2/pages/1698"
    regex(%r{href=.*?/PinegrowMac#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
