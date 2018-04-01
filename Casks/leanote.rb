cask 'leanote' do
  version '2.6'
  sha256 'c11a4170e6fab48c8ad37c2f5959a1c6571b2ebd63e7b6e54de30a8db208ee86'

  # sourceforge.net/leanote-desktop-app was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/leanote-desktop-app/#{version}/leanote-desktop-mac-v#{version}.zip"
  appcast 'https://sourceforge.net/projects/leanote-desktop-app/rss?path=/',
          checkpoint: 'f34c49f5116c4d1399c9e4abe91dfd83b9e349dc9c3698dfdd6e7f7c43a72d9e'
  name 'Leanote'
  homepage 'http://leanote.org/'

  app 'Leanote.app'
end
