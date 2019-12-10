cask 'macwinzipper' do
  version '2.6'
  sha256 '29d35de75977f02643f07ee58e9874eb0dfb7dc6631a5b709cacf8049260e493'

  url "https://tida.me/files/MacWinZipper-#{version}.dmg?download"
  appcast 'https://tida.me/macwinzipper'
  name 'MacWinZipper'
  homepage 'https://tida.me/macwinzipper'

  app 'MacWinZipper.app'
end
