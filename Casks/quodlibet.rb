cask "quodlibet" do
  version "4.3.0"
  sha256 "858afc8630d0df974466c7d4123ca7c46d0fa81c24ef3c25a5dc780f3334ef08"

  # github.com/quodlibet/quodlibet/ was verified as official when first introduced to the cask
  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/QuodLibet-#{version}.dmg"
  appcast "https://github.com/quodlibet/quodlibet/releases.atom"
  name "Quod Libet"
  desc "Music player and music library manager"
  homepage "https://quodlibet.readthedocs.io/"

  app "QuodLibet.app"

  zap trash: [
    "~/Library/Preferences/io.github.quodlibet.quodlibet.plist",
    "~/Library/Saved Application State/io.github.quodlibet.quodlibet.savedState",
    "~/.quodlibet",
  ]
end
