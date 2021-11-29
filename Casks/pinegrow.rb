cask "pinegrow" do
  version "6.21"
  sha256 "d2c037f70a07a2ad4fc049a8e2bc6393593b12933a8c18ccb58a8c713899f9d5"

  url "https://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/PinegrowMac[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
