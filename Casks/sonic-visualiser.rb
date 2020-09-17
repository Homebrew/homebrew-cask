cask "sonic-visualiser" do
  version "4.2,2759"
  sha256 "2eedac658572e570366f6658850a7830e3c56e8be4ccb2de63cd88a8948468d8"

  # code.soundsoftware.ac.uk/ was verified as official when first introduced to the cask
  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg"
  appcast "https://code.soundsoftware.ac.uk/projects/sonic-visualiser/repository/raw/CHANGELOG"
  name "Sonic Visualiser"
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
