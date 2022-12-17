cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "7.03"
  sha256 arm:   "eac8d185d25c4cc85ac5b592f37df697f7b3bcf664870bcbd895bd72547db214",
         intel: "b3c280999a86b4f342b0b4a9ade58bdef26870c15e42f87acffc0c95700a0cd3"

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
