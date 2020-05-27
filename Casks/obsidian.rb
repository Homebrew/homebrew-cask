cask 'obsidian' do
  version '0.6.4'
  sha256 '1da5fffd869201ba044137ebfaf0f0659982a653f3f5b75d6634c410f8eb6b8c'

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
