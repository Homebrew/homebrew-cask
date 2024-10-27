cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "8.1"
  sha256 arm:   "c0e45afc2252cf63104ee803deecbc702c72c89f313bfa5c9338083d36cf161f",
         intel: "d80500868616af77e419649e21b1371b8a2632f4ff63a689070edc578255dcff"

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
