cask "ckan" do
  version "1.33.2"
  sha256 "f9bcef578eead3344d923368a80cd9fe91f58e4bdfd1e024702f24c9039b5dba"

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  name "Comprehensive Kerbal Archive Network"
  desc "Mod management solution for Kerbal Space Program"
  homepage "https://github.com/KSP-CKAN/CKAN"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "mono-mdk"

  app "CKAN.app"

  zap trash: "~/.local/share/CKAN"
end
