cask 'melodics' do
  version '2.0.2727'
  sha256 '7470733bc137f38ca73db0ed754a005ff7d17ac0510cc42c841c0f6c0dba2fa9'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
