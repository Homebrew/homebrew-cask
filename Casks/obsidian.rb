cask 'obsidian' do
  version '0.7.6'
  sha256 '12a7c4b92203e4dd13a3527885a05354e8a33cb5c127ce7f25b7a375ad9645ba'

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
