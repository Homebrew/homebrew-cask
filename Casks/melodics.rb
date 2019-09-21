cask 'melodics' do
  version '2.1.3393'
  sha256 'cc22710aa29d5dc129d84b70d8ddc2030dc49ab60d4fa952456b6d12931111e4'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
