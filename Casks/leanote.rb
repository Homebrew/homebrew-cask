cask 'leanote' do
  version '2.6'
  sha256 'c11a4170e6fab48c8ad37c2f5959a1c6571b2ebd63e7b6e54de30a8db208ee86'

  # sourceforge.net/leanote-desktop-app was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/leanote-desktop-app/#{version}/leanote-desktop-mac-v#{version}.zip"
  appcast 'https://sourceforge.net/projects/leanote-desktop-app/rss?path=/'
  name 'Leanote'
  homepage 'http://leanote.org/'

  app 'Leanote.app'
end
