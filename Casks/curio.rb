cask "curio" do
  version "24.0,24007"
  sha256 "a0eefd3334158825e09e2857aaff6ed0e5cf2bc849b035e123eeaa5d0aa3df03"

  url "https://www.zengobi.com/downloads/Curio#{version.csv.second.no_dots}.zip"
  name "Curio"
  desc "Note-taking and organizing app"
  homepage "https://zengobi.com/curio/"

  livecheck do
    url "https://www.zengobi.com/curio/appcasts/Curio#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "Curio.app"
end
