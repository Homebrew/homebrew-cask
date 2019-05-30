cask 'logos' do
  version '8.5.0.0026'
  sha256 :no_check

  url 'https://downloads.logoscdn.com/LBS8/Installer/#{version}/LogosMac.dmg'
  appcast "https://clientservices.logos.com/update/v1/feed/logos8-mac/stable.xml"
  name 'Logos Bible Software'
  homepage 'https://www.logos.com/'

  app 'Logos.app'
end
