cask 'melodics' do
  version '2.1.4598'
  sha256 'ab81ac8854a5ede20379a8e4a4a7cd1ae9b53491a3362ab0579627c83f3c57ac'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
