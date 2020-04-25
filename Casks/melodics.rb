cask 'melodics' do
  version '2.1.4295'
  sha256 'f39592c43e262987c1c7143feed161213cba6dde110c41e7e5bef264c7b31718'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
