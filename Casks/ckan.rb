cask "ckan" do
  version "1.32.0"
  sha256 "2bbef450a5b0f96dc587fbfa2f3035e4c21bd93455e8f82d9d26bb84b29f7b5a"

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
