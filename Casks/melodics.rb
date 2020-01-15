cask 'melodics' do
  version '2.1.3988'
  sha256 '0d0bd1979584732907722a8855eb2b64670332bad8bb19e877f9eac458dd66e4'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
