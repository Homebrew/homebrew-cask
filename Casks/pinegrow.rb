cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "7.04"
  sha256 arm:   "cebab44e3c12f697fe79358a82693badbf740bf42459c7a5ddac78c412bc84f7",
         intel: "76ab4b9f3b2b3de90a87dcc72ae2459bbfaf04c32ec36c197cad47a409feb966"

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
