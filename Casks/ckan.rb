cask "ckan" do
  version "1.30.2"
  sha256 "136ec251c2846af36578d7ff745912ae255f546597f340642d16533a44bb48c0"

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  name "Comprehensive Kerbal Archive Network client"
  homepage "https://github.com/KSP-CKAN/CKAN"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "mono-mdk"

  app "CKAN.app"
end
