cask "ckan" do
  version "1.34.2"
  sha256 "91c9bf6c8e11b74bd846ce2c5a9442c4b6bcba6b7479000782751679f8a6fbb2"

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
