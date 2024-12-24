cask "tpvirtual" do
  version "3"
  sha256 "ed4126989c26c2d9b0e2b48ec454340eb3f50042797a5b4a201435d3cdf80e1f"

  url "https://virtual.trainingpeaks.com/TPVirtual-Installer_v#{version}.dmg"
  name "TrainingPeaks Virtual"
  desc "Indoor cycling game"
  homepage "https://www.trainingpeaks.com/virtual/"

  livecheck do
    url :homepage
    regex(/href=.*?TPVirtual[._-]Installer[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "TPVirtual-Launcher.app"

  zap trash: [
    "~/Library/Application Support/com.indievelo.client",
    "~/Library/Application Support/com.indieVelo.launcher",
  ]
end
