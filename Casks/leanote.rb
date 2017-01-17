cask 'leanote' do
  version '2.2.3'
  sha256 '381852c3359e616fcb8d362740dc0c7acbd5941cb7822b1e224820a26816fe18'

  # sourceforge.net/leanote-desktop-app was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/leanote-desktop-app/#{version}/leanote-desktop-mac-v#{version}.zip"
  appcast 'https://sourceforge.net/projects/leanote-desktop-app/rss?path=/',
          checkpoint: '80d92fbb5a2bc432837065176fd9c2a3f9dc106028e2f23f51cced097ec029bc'
  name 'Leanote'
  homepage 'http://leanote.org/'

  app 'Leanote.app'
end
