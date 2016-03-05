cask 'espionage' do
  version '3.6.5'
  sha256 'e0519ceaddf70feff583514da13329b0a52e8efe6e40781c9a54d2a6d79d0be7'

  url 'https://www.espionageapp.com/Espionage.dmg'
  appcast "https://updates.taoeffect.com/espionage#{version.major}/appcast.xml",
          checkpoint: 'd94be02d853880f35202a58bb6720ca74d58054cbbaa380548b13410dd6a0ab9'
  name 'Espionage'
  homepage 'https://www.espionageapp.com/'
  license :commercial
  gpg "#{url}.sig",
      key_url: 'https://www.taoeffect.com/other/A884B988.asc'

  app 'Espionage.app'
end
