cask 'sitebulb' do
  version '3.6.4'
  sha256 'f3ec327d9261a70a376c1ce49555599e17e5be53e1cb7136764569e71fc75a35'

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast 'https://sitebulb.com/download/'
  name 'Sitebulb'
  homepage 'https://sitebulb.com/'

  app 'Sitebulb.app'
end
