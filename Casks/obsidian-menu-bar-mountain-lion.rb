class ObsidianMenuBarMountainLion < Cask
  url 'http://www.maxrudberg.com/downloads/Obsidian%20Menu%20Bar%2010.8.dmg'
  homepage 'http://www.maxrudberg.com'
  version '10.8'
  sha256 '12ad6bdf23028a10f2c3b62f08bd2ad90174a53c0c3fcb5b8d1365f033ca9b64'
  install 'Obsidian Menu Bar.pkg'
  # uninstall :script => 'Restore OS X Menu Bar.pkg'
end
