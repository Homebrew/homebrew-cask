cask 'melodics' do
  version '2.0.2449'
  sha256 '430873f084ccd71b21dd889e6062471973ca4e103060919f050599eccd126b49'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
