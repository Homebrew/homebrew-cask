cask 'melodics' do
  version '2.1.3610'
  sha256 '5cb948fecb0fbb542667f54af99cb33acfdb3c7618ff097cff2592daff2e72d6'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
