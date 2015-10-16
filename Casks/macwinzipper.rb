cask :v1 => 'macwinzipper' do
  version '2.5'
  sha256 'fc3afd92ecfbde16bbdd388285e16ef8f7aa5f5edf669496115823fef92a0186'

  url "http://tidajapan.com/files/MacWinZipper-#{version}.dmg?download"
  name 'MacWinZipper'
  homepage 'http://tidajapan.com/macwinzipper'
  license :commercial

  app 'MacWinZipper.app'
end
