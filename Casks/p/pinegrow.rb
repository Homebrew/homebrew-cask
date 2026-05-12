cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "9.2"
  sha256 arm:   "e4f2c8428feddb5de61a8f3e2636c973646078ee9a8a44a34fa9f8551ae8904f",
         intel: "37d22c3a222d31fd9159d1e72603de947b7b1cbb91ff709c87163719d8cc8106"

  url "https://download.pinegrow.com/PinegrowMac#{arch}.#{version}.dmg"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url "https://docs.pinegrow.com/wp-json/wp/v2/pages/1698"
    regex(%r{href=.*?/PinegrowMac#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: :big_sur

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
