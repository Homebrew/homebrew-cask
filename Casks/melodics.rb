cask 'melodics' do
  version '2.1.3679'
  sha256 'aee6d79b03ade0248e81e7ca043da6e5ce7c0804318843e82fec5022931c5975'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
