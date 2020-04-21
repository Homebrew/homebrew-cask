cask 'melodics' do
  version '2.1.4290'
  sha256 'f947dee37324d69f24026cb16be6d8e3c5aa36095f5df939cebdeb128d91c3c7'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
