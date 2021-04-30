cask "dosbox" do
  version "0.74-3,3"
  sha256 "83493d149318cb7bfe5d68d98d1cd10b003db2f0519374bf06de285dc0bb2768"

  url "https://downloads.sourceforge.net/dosbox/dosbox/#{version.before_comma}/DOSBox-#{version.before_comma}-#{version.after_comma}.dmg",
      verified: "sourceforge.net/dosbox/"
  appcast "https://sourceforge.net/projects/dosbox/rss?path=/dosbox"
  name "DOSBox"
  homepage "https://www.dosbox.com/"

  app "dosbox.app"

  zap trash: "~/Library/Preferences/DOSBox*"
end
