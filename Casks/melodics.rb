cask 'melodics' do
  version '2.0.2356'
  sha256 '65ddee95e4c9554b485b6ceaf56aae321eb97627b7b5c3e5185e0ee911aaf6d2'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
