cask 'macwinzipper' do
  version '2.5.3.1'
  sha256 '33de61cfb8d2bef18eac623681a7b1b35c8980c6d7e7ed77f0205765e5d79f7d'

  url "http://tidajapan.com/files/MacWinZipper-#{version}.dmg?download"
  name 'MacWinZipper'
  homepage 'http://tidajapan.com/macwinzipper'

  app 'MacWinZipper.app'
end
