cask 'melodics' do
  version '2.0.2898'
  sha256 '41bf63ccf2a7a4d964eec320cfc6cc050d0abab76775c29a9fb59a1d5d92ce7c'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
