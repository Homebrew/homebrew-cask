cask 'melodics' do
  version '2.1.3183'
  sha256 '317a7b62d1cf1c35dd83fdbc1390b532d20293b0d16f4024bf556f65091e6ac3'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
