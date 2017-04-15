class ObsidianMenuBarMavericks < Cask
  url 'http://www.obsidianmenubar.com/downloads/Obsidian%20Menu%20Bar.zip'
  homepage 'http://www.obsidianmenubar.com'
  version '10.9'
  sha1 '2e9b1b2093fd37cd5e89d23385cf178d3316f634'
  caskroom_only true
  
  caveats do
    puts "Be aware: Translucent Menu Bar must be turned off for Obsidian Menu Bar to operate."
    puts "You can toggle this in the Desktop & Screensaver pane in System Preferences."
  end
   
  after_install do
    system "/usr/bin/open #{destination_path}/Obsidian\\ Menu\\ Bar/Install\\ Obsidian\\ Menu\\ Bar.app"
  end
  
  # uninstall :script => '#{destination_path}/Obsidian\\ Menu\\ Bar/Restore\\ Default\\ Menu\\ Bar.app'
  
end