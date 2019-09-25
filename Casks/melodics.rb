cask 'melodics' do
  version '2.1.3551'
  sha256 '7b9d0c573d0bc73bb1a4c74e758bfa9e8ce16d4cdf3347629a72a9b3b53f0313'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
