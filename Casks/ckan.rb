cask "ckan" do
  version "1.29.2"
  sha256 "768bbf3385ee3d762132bd4a82fc9222f0e2e60c69bdefda948b80ce8b7bcbad"

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
