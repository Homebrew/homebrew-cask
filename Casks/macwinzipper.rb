cask 'macwinzipper' do
  version '2.5.1'
  sha256 'a0b22a7be20db6ca8dc5929d447394452435766a0a04c221bc0a4334208650d9'

  url "http://tidajapan.com/files/MacWinZipper-#{version}.dmg?download"
  name 'MacWinZipper'
  homepage 'http://tidajapan.com/macwinzipper'
  license :commercial

  app 'MacWinZipper.app'
end
