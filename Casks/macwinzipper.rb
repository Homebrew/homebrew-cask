cask 'macwinzipper' do
  version '2.5.3'
  sha256 'f9ac05daef780f8b79557af2a77600a17c97951051a43cf8c93860afd7855818'

  url "http://tidajapan.com/files/MacWinZipper-#{version}.dmg?download"
  name 'MacWinZipper'
  homepage 'http://tidajapan.com/macwinzipper'

  app 'MacWinZipper.app'
end
