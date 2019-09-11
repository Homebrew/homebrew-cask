cask 'melodics' do
  version '2.1.3392'
  sha256 '170c0ac92cee21a6e352875bccc530632486d5f84b812ac9e36193e9bc2cef6b'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
