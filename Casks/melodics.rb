cask 'melodics' do
  version '2.0.2198'
  sha256 '3c611d73f68f4016e687f138c7ec4b1cd158657afa982ec63f95d7dfb2600f2f'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
