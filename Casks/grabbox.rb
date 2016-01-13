cask 'grabbox' do
  version '0.4.2'
  sha256 'e6f92efce8585b58d1b5d9afc4a2187e07bf76c14961aff1b83a8422fb342f2f'

  url "http://grabbox.devsoft.no/updates/GrabBox%20Beta%20v#{version}.zip"
  appcast 'http://grabbox.devsoft.no/appcastBeta.xml',
          :sha256 => 'c50178790682b75eabc6f1c3cbc0af380af153fb36c466a38f165f019cfb2e1f'
  name 'GrabBox'
  homepage 'http://grabbox.devsoft.no/'
  license :gpl

  app 'GrabBox.app'
end
