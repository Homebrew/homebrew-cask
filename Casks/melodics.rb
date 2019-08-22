cask 'melodics' do
  version '2.1.3331'
  sha256 '1ebc9e9e530b402a756988ba1d16aa9afa651c2b7a9567a6efaa428b7178e2ec'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
