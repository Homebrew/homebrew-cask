cask "ckan" do
  version "1.30.4"
  sha256 "2b81d18259dc11a3043c165b1d6e95b1290103eb56f67b2b5d1f1dee1ca3fc9a"

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
