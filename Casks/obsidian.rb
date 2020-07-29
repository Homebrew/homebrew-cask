cask 'obsidian' do
  version '0.7.3'
  sha256 '1cf7cef25c8424a338ff1092ec502b30af446628c4595e8c1cd4f1654e29a06c'

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
