cask 'obsidian' do
  version '0.6.7'
  sha256 '15110ee8f5a30c3c75de9302740d0b3009dd06723f5b3d220d484fa5c7c7c4a3'

  # github.com/obsidianmd/ was verified as official when first introduced to the cask
  url "https://github.com/obsidianmd/obsidian-releases/releases/download/v#{version}/Obsidian-#{version}.dmg"
  appcast 'https://github.com/obsidianmd/obsidian-releases/releases.atom'
  name 'Obsidian'
  homepage 'https://obsidian.md/'

  app 'Obsidian.app'

  zap trash: [
               '~/Library/Application Support/obsidian',
               '~/Library/Preferences/md.obsidian.plist',
               '~/Library/Saved Application State/md.obsidian.savedState',
             ]
end
