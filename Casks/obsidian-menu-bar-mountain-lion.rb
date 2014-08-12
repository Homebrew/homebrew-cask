class ObsidianMenuBarMountainLion < Cask
  version '10.8'
  sha256 '97c8545c623ec78a0a81c2b7bb6a7afa9d0dd517a64b74f5320e2e279a2786aa'

  url 'http://www.obsidianmenubar.com/downloads/Obsidian%20Menu%20Bar%2010.8.dmg'
  homepage 'http://www.obsidianmenubar.com'

  install 'Obsidian Menu Bar.pkg'
  # uninstall :script => 'Restore OS X Menu Bar.pkg'
end
