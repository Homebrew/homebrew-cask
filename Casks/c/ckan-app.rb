cask "ckan-app" do
  version "1.36.4"
  sha256 "4a996aec992de5e92658c6219f2fd848b2f4dc48d464e731c652b5bd02d10d07"

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  name "Comprehensive Kerbal Archive Network"
  desc "Mod management solution for Kerbal Space Program"
  homepage "https://github.com/KSP-CKAN/CKAN"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos
  depends_on cask: "mono-mdk"

  app "CKAN.app"

  zap trash: "~/.local/share/CKAN"
end
