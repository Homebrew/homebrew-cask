cask 'melodics' do
  version '2.0.2056'
  sha256 '379f08b4b751a2b361d955cd3b76358cc98f7233b0cfcbb66ead42c22278a338'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
