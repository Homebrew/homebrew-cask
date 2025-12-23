cask "ckan-app" do
  version "1.36.2"
  sha256 "8c6eae224102f4fcfffca13ba600735f4812cc83850a82d6803dce33d3f12056"

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  name "Comprehensive Kerbal Archive Network"
  desc "Mod management solution for Kerbal Space Program"
  homepage "https://github.com/KSP-CKAN/CKAN"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on cask: "mono-mdk"

  app "CKAN.app"

  zap trash: "~/.local/share/CKAN"
end
