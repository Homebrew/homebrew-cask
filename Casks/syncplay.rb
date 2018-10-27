cask 'syncplay' do
  version '1.6.0'
  sha256 '50cb1c5a1d247cf097067c8ef56745366cf63fd916c68d26be3763959195498f'

  # github.com/Syncplay/syncplay was verified as official when first introduced to the cask
  url "https://github.com/Syncplay/syncplay/releases/download/v#{version}/Syncplay_#{version}.dmg"
  appcast 'https://github.com/Syncplay/syncplay/releases.atom'
  name 'Syncplay'
  homepage 'https://syncplay.pl/'

  auto_updates true

  app 'Syncplay.app'

  as_dir  = [Dir.home, 'Library', 'Application Support']
  our_dir = ['org.videolan.vlc', 'lua', 'intf']

  postflight do
    (0..our_dir.length - 1).each do |i|
      dir = File.join(as_dir, our_dir[0..i])
      break if Dir.exist? dir

      Dir.mkdir dir
    end
    FileUtils.cd staged_path do
      FileUtils.cp '.syncplay.lua',
                   File.join(as_dir, our_dir, 'syncplay.lua')
    end
  end

  uninstall_postflight do
    FileUtils.rm_f File.join(as_dir, our_dir, 'syncplay.lua')
    (0..our_dir.length - 1).reverse_each do |i|
      dir = File.join(as_dir, our_dir[0..i])
      break unless Dir.entries(dir).reject { |e| e =~ %r{^\.\.?$} }.empty?

      Dir.rmdir dir
    end
  end

  zap trash: [
               '~/.syncplay',
               '~/Library/Saved Application State/pl.syncplay.Syncplay.savedState',
               '~/Library/Preferences/com.syncplay.MoreSettings.plist',
               '~/Library/Preferences/com.syncplay.Interface.plist',
               '~/Library/Preferences/com.syncplay.MainWindow.plist',
               '~/Library/Preferences/pl.syncplay.Syncplay.plist',
               '~/Library/Preferences/com.syncplay.PlayerList.plist',
             ]
end
