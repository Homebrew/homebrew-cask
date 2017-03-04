cask 'macwinzipper' do
  version '2.5.2'
  sha256 'a0aa57ae29772df78a698eab8c2ac723877c0a34bee2e477e6ceb6c2b4f4b86f'

  url "http://tidajapan.com/files/MacWinZipper-#{version}.dmg?download"
  name 'MacWinZipper'
  homepage 'http://tidajapan.com/macwinzipper'

  app 'MacWinZipper.app'
end
