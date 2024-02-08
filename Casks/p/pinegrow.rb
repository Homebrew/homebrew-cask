cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "7.72"
  sha256 arm:   "a0e9a4126d583f69e4e9127bd8d1efc13fc27040289d1e23407278a4268d2a85",
         intel: "885180db8bffd77806769b87e774040b85da33cde12d085bfc691c686b8c326d"

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
