cask 'leanote' do
  version '2.6.1'
  sha256 '12595377e6560689c5ca7370fb83be9670cbd335669da35ed3131123936050c2'

  # sourceforge.net/leanote-desktop-app was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/leanote-desktop-app/#{version}/leanote-desktop-mac-v#{version}.zip"
  appcast 'https://sourceforge.net/projects/leanote-desktop-app/rss?path=/'
  name 'Leanote'
  homepage 'http://leanote.org/'

  app 'Leanote.app'
end
