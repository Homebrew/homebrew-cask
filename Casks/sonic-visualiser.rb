cask "sonic-visualiser" do
  version "4.2"
  sha256 "2eedac658572e570366f6658850a7830e3c56e8be4ccb2de63cd88a8948468d8"

  url "https://bintray.com/sonic-visualiser/sonic-visualiser/download_file?file_path=Sonic+Visualiser-#{version}.dmg",
      verified: "bintray.com/sonic-visualiser/"
  appcast "https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG"
  name "Sonic Visualiser"
  desc "Visualisation, analysis, and annotation of music audio recordings"
  homepage "https://www.sonicvisualiser.org/"

  depends_on macos: ">= :sierra"

  app "Sonic Visualiser.app"

  zap trash: [
    "~/Library/Saved Application State/org.sonicvisualiser.SonicVisualiser.savedState",
    "~/Library/Preferences/org.sonicvisualiser.Sonic Visualiser.plist",
    "~/Library/Preferences/org.sonicvisualiser.SonicVisualiser.plist",
    "~/Library/Application Support/sonic-visualiser/",
  ]
end
