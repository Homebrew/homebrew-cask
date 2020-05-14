cask 'melodics' do
  version '2.1.4423'
  sha256 'a1d334f563f729ef41d00b407537b0f3329e54a9e1a8f777d0c462d2856d2bba'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
