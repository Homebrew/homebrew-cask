cask 'melodics' do
  version '2.1.4041'
  sha256 '899eba197c368d515f2c9f4f7e03a8388a2f8d8312c7d2864711fc9332619437'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
