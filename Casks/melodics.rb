cask 'melodics' do
  version '2.0.2694'
  sha256 'aa787fe804204e0deec2ff2f43dba62fd0ef5f22aa0c28c1dd1bdf89764d901c'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
