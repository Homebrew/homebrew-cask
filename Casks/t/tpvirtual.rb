cask "tpvirtual" do
  version "5"
  sha256 "ccbdb47ef0627bac3326d1a0dd18b61da1a8fc80ef62dcf7a6d81a4c1847211b"

  url "https://virtual.trainingpeaks.com/TPVirtual-Installer_v#{version}.dmg"
  name "TrainingPeaks Virtual"
  desc "Indoor cycling game"
  homepage "https://www.trainingpeaks.com/virtual/"

  livecheck do
    url :homepage
    regex(/href=.*?TPVirtual[._-]Installer[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: :big_sur

  app "TPVirtual-Launcher.app"

  zap trash: [
    "~/Library/Application Support/com.indievelo.client",
    "~/Library/Application Support/com.indieVelo.launcher",
  ]
end
