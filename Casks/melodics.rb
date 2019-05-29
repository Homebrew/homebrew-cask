cask 'melodics' do
  version '2.0.2854'
  sha256 'c325d2ed6b33db27153fd9cda129c69089436e3a1aab59cada91a7439c8a1bfa'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
