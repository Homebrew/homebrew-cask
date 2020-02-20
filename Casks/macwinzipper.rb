cask 'macwinzipper' do
  version '2.7'
  sha256 '37ff612125d80acf39a873e087a301c524708bb0c4af64be55a335555af23d62'

  url "https://tida.me/files/MacWinZipper-#{version}.dmg?download"
  appcast 'https://tida.me/macwinzipper'
  name 'MacWinZipper'
  homepage 'https://tida.me/macwinzipper'

  app 'MacWinZipper.app'
end
