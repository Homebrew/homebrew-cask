cask 'melodics' do
  version '2.0.2746'
  sha256 '858b721ed687922a2998d583def423a664871363bce36648ce35ab08e7d183ff'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
