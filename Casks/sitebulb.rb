cask 'sitebulb' do
  version '3.2.3'
  sha256 'd651f4648cb71d51aab135f0f6932ca5eea5e995848ce4e7411862e7f5a305bc'

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast 'https://sitebulb.com/download/'
  name 'Sitebulb'
  homepage 'https://sitebulb.com/'

  app 'Sitebulb.app'
end
