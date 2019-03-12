cask 'melodics' do
  version '2.0.2717'
  sha256 '665120fa24cfcd7834d0f94d864d43620fe810233970a29d86eefe0b4e90486a'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
