cask 'melodics' do
  version '2.1.3764'
  sha256 'ec5efa5246406def1e4d74b5a5229dc496e2cc030096d8dedeaba781e1506529'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
