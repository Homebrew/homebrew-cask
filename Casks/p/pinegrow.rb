cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "8.61"
  sha256 arm:   "c80b196ffa93880c22cf75442019ccbf305915e65a64996277b90d9ed7c0e272",
         intel: "5bf5a281aff2081972ee37a8c78b601ebdfdf83871a64d5ea0d95f4acce94682"

  url "https://download.pinegrow.com/PinegrowMac#{arch}.#{version}.dmg"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url "https://docs.pinegrow.com/wp-json/wp/v2/pages/1698"
    regex(%r{href=.*?/PinegrowMac#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
