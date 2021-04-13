cask "catlight" do
  version "2.34.2"
  sha256 "42d4338ca3ce49db9ab05e248da2ea0a430aaf379a7a5b2a01d3575fa6da94b5"

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
end
