cask "tpvirtual" do
  version "4"
  sha256 "37049e1f9a3403050be2f1b5d551024429a27e72a304838366053ac061f875ba"

  url "https://virtual.trainingpeaks.com/TPVirtual-Installer_v#{version}.dmg"
  name "TrainingPeaks Virtual"
  desc "Indoor cycling game"
  homepage "https://www.trainingpeaks.com/virtual/"

  livecheck do
    url :homepage
    regex(/href=.*?TPVirtual[._-]Installer[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "TPVirtual-Launcher.app"

  zap trash: [
    "~/Library/Application Support/com.indievelo.client",
    "~/Library/Application Support/com.indieVelo.launcher",
  ]
end
