cask 'melodics' do
  version '2.0.2152'
  sha256 '2d33bbc900ff2c2dd95ad9da0679f9d142c00778e42c2ebf2697d4a4ab4a2030'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
