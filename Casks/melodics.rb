cask 'melodics' do
  version '2.1.4206'
  sha256 '5f978cf00fdabd9ef4dc95b189e0151d94dd972c36eca7d169bb0890a7bb0475'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
