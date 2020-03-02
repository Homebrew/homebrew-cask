cask 'macspice' do
  version '3.1.22'
  sha256 '66ef2ec06ddd723b25837aa1b14b53bc9d542bc68677a203c2416c8a45f05b4f'

  url "https://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'https://www.macspice.com/AppCast-v2.xml'
  name 'MacSpice'
  homepage 'https://www.macspice.com/'

  app 'MacSpice.app'
end
