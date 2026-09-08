cask "tpvirtual" do
  version "6"
  sha256 "7a117865f86708f732dfacd6ec4bbe69656e75e4bf71d6801832b25fe52bef20"

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
