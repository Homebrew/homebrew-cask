cask 'melodics' do
  version '2.1.3628'
  sha256 'a80d8583b9e04560a8b3c4cab4c43f6dc3c47330fe085a14920cac8e8eab27b7'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
