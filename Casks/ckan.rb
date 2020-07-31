cask "ckan" do
  version "1.28.0"
  sha256 "c3b87542bc6610c57f020db780ac761bfbdc140ab9b0993d318525ca45802ab5"

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast "https://github.com/KSP-CKAN/CKAN/releases.atom"
  name "Comprehensive Kerbal Archive Network client"
  homepage "https://github.com/KSP-CKAN/CKAN"

  depends_on cask: "mono-mdk"

  app "CKAN.app"
end
