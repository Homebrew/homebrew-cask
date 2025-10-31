cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "8.6"
  sha256 arm:   "2145e72bd71ccac45b69df8a750a834bec49e12075f6cffa27f9e0d24abe5772",
         intel: "3cda208ae6c43f6b5126e3467cb5dc2fb679abe49cf4707b0c7895bacdece8a3"

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
