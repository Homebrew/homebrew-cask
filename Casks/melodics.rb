cask 'melodics' do
  version '2.1.3807'
  sha256 '4078dcd083e27445adb659d7227e85c9ba9fdf10b872e67e83da1a46ffea2af9'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
