cask 'melodics' do
  version '2.1.3862'
  sha256 'dbaf05e947d210b7c6249b6878fed95b3e83a2a63bc7f23117fc5e8f4decda78'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
