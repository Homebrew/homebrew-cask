cask "ckan" do
  version "1.31.2"
  sha256 "1b55b4f696af9f1bd22b478a0fe86270fcde86633f21242044e8ba3fc8434d00"

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  name "Comprehensive Kerbal Archive Network"
  desc "Mod management solution for Kerbal Space Program"
  homepage "https://github.com/KSP-CKAN/CKAN"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on cask: "mono-mdk"

  app "CKAN.app"
end
