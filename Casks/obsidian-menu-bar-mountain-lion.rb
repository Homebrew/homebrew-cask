class ObsidianMenuBarMountainLion < Cask
  url 'http://www.maxrudberg.com/downloads/Obsidian%20Menu%20Bar%2010.8.dmg'
  homepage 'http://www.maxrudberg.com'
  version '10.8'
  sha1 'e4098264356624803df62b6409a0e2016a2a72cd'
  install 'Obsidian Menu Bar.pkg'
  # uninstall :script => 'Restore OS X Menu Bar.pkg'
end
