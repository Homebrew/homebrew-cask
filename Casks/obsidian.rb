cask 'obsidian' do
  version '0.7.4'
  sha256 '9d98791e107aa29764c80018882565668a7be31ec1690a42ddd97bb50a30c92d'

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
