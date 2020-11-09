cask "ckan" do
  version "1.29.0"
  sha256 "b512639ffc673a895b23aab147346a7c1c4e34dd46ff6d9eea3c312c08f1e9ad"

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast "https://github.com/KSP-CKAN/CKAN/releases.atom"
  name "Comprehensive Kerbal Archive Network client"
  homepage "https://github.com/KSP-CKAN/CKAN"

  depends_on cask: "mono-mdk"

  app "CKAN.app"
end
