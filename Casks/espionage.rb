cask 'espionage' do
  version '3.62'
  sha256 '4e6ddb3a51adca6a81a42d56d855eea35ca15590bc41c92d41067d5537eaf129'

  url 'https://www.espionageapp.com/Espionage.dmg'
  appcast "https://updates.taoeffect.com/espionage#{version.major}/appcast.xml",
          checkpoint: '52e10849eb03fa552293aca733797366418af5fb28eb7da166d557f3fec41abf'
  name 'Espionage'
  homepage 'https://www.espionageapp.com/'
  license :commercial
  gpg "#{url}.sig",
      key_url: 'https://www.taoeffect.com/other/A884B988.asc'

  app 'Espionage.app'
end
