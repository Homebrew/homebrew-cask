cask "catlight" do
  version "2.38.14"
  sha256 "1fd1a6440afbe4eb3f6473d73c39674a296a19407ee17335ebcff27b77d75c12"

  url "https://download.catlight.io/rel/mac/beta/CatLightSetup-#{version}.zip"
  name "catlight"
  desc "Action center for developers"
  homepage "https://catlight.io/"

  livecheck do
    url "https://catlight.io/downloads/mac/beta"
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
