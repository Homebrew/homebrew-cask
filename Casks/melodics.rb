cask 'melodics' do
  version '2.0.2714'
  sha256 '18ca95e79cc57c46c00924972e01f06fe641448cd7589c510ac7ca0dd6b3adfc'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
