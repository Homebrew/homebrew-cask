cask 'melodics' do
  version '2.0.2081'
  sha256 '3f161c612c8b3559cbad75619527803e73b9748d8aafb683df61ec3cb40a6629'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
