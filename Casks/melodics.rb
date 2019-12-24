cask 'melodics' do
  version '2.1.3937'
  sha256 'b2b334dc19e2c5f5beb5032dad622001c0d62d9502e225aa0df110bea76a456f'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
