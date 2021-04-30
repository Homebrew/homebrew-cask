cask "sonic-visualiser" do
  version "4.3"
  sha256 "eafd46decd7c00680ba95c2246fd34a9da64a280479bb3077d4487d656a6cdc2"

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
