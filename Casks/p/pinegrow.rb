cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "7.92"
  sha256 arm:   "a2afe3825007aa3dfe733ac511da4fe4456bcac9514927777af77d5e886ddf7d",
         intel: "6df61df732bebff1c3a1011bfc5af5457ff80e1dd4b2f7dff4e8972121211701"

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
