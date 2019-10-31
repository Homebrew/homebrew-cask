cask 'melodics' do
  version '2.1.3679'
  sha256 '06efdfe7cdd400d1dc44ba6ab8f7409550b74f5e53bc03adf627b28bb582a738'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
