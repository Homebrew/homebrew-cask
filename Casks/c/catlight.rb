cask "catlight" do
  version "3.3.1"
  sha256 "4bbeca72349147a174cff556df93173262a29229e99418309624b7aeea2cf3ca"

  url "https://download.catlight.io/rel/mac/release/CatLightSetup-#{version}.zip"
  name "catlight"
  desc "Action center for developers"
  homepage "https://catlight.io/"

  livecheck do
    url "https://catlight.io/downloads/mac/release"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "Catlight.app"

  zap trash: [
    "~/Library/Application Support/Catlight",
    "~/Library/Logs/Catlight",
    "~/Library/Preferences/Catlight.plist",
    "~/Library/Saved Application State/Catlight.savedState",
  ]
end
