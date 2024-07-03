cask "catlight" do
  version "3.7.2"
  sha256 "fbe067e9c995f2bfb99ee4909ef0dbe216329e730546b9c28a0a7e2b71bc5cd4"

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

  caveats do
    requires_rosetta
  end
end
