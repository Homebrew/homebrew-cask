cask 'melodics' do
  version '2.0.2853'
  sha256 '2d845a180860bdc33b240df2423380c458508733654413939990223786713601'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
