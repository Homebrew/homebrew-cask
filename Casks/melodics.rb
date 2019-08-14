cask 'melodics' do
  version '2.1.3205'
  sha256 'ce93f5486a39a222d5d521fe43a9ba129703deff1ad0938578995a2d6d71e4f2'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
