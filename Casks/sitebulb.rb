cask 'sitebulb' do
  version '3.6.3'
  sha256 'fcf7ed70115cdd1ec2d4bb59b38a566d43177b449c298d5b5d8a03db81f7f12d'

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast 'https://sitebulb.com/download/'
  name 'Sitebulb'
  homepage 'https://sitebulb.com/'

  app 'Sitebulb.app'
end
