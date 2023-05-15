cask "system-version-check" do
  version "1.0.0"
  sha256 "331dae5973a0091552cd888452c220e436fb11aa70f5df5510d772f72db42a7c"

  url "https://github.com/leejongyoung/System-Version-Checker/releases/download/v#{version}/System-Version-Check-v#{version}.dmg"
  name "System Version Check"
  desc "Check the version information of your system"
  homepage "https://github.com/leejongyoung"

  livecheck do
    url "https://github.com/leejongyoung/System-Version-Checker/releases.atom"
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "System Version Check.app"
end
