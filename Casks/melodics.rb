cask 'melodics' do
  version '2.0.2957'
  sha256 'a7bcd3dadbaf77132ebe19fd3b7025b567850313de58d2ec7da1daeddea2c140'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
