cask 'melodics' do
  version '2.0.2072'
  sha256 'e81656ed36f8fe714606065ed2c698114059b507d8bfa8fbadb40f059c5559d1'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
