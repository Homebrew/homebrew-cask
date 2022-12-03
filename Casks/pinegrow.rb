cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "7.0.1"
  sha256 arm:   "fe38638599c24fcdc6cc3abec99e8e8a18e7d3c305321d0d78bdc010e280f2b1",
         intel: "a22bb320b2802a4ed3104c41a96a59586910b88a49527f0108e1d53a81448d04"

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
