cask 'drivedx' do
  version '1.9.0'
  sha256 '4c984cac298539018e799b2804c298b53588ff559e8f029efc60a1814e95bf3e'

  url "https://binaryfruit.com/download/drivedx/mac/#{version.major}/bin/DriveDx.#{version}.zip"
  appcast "https://binaryfruit.com/download/drivedx/mac/#{version.major}/updates/?appcast&appName=DriveDxMac"
  name 'DriveDX'
  homepage 'https://binaryfruit.com/drivedx'

  app 'DriveDX.app'
end
