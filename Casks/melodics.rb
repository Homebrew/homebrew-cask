cask 'melodics' do
  version '2.1.3191'
  sha256 '93c78881539ffac5456539ba1eb0f97288bac3bd06e9504730a68ad0d1e7077a'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
