cask "ckan" do
  version "1.31.0"
  sha256 "abee84659d902afc6bedec46e8dba6f40f5a94725b5a2e0ac690891cfa7eb81b"

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
