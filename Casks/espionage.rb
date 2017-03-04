cask 'espionage' do
  version '3.6.6'
  sha256 '3bf87d0e9a85035a3e602f152644f47b52957bb097c9dbabbd66f33e6e3b1aa6'

  url 'https://www.espionageapp.com/Espionage.dmg'
  appcast "https://updates.taoeffect.com/espionage#{version.major}/appcast.xml",
          checkpoint: 'b3b95a26d885f32057b6e4275253ca57b7144ca9568490ee35b5c7ab9d6425a5'
  name 'Espionage'
  homepage 'https://www.espionageapp.com/'
  gpg "#{url}.sig",
      key_url: 'https://www.taoeffect.com/other/A884B988.asc'

  app 'Espionage.app'
end
