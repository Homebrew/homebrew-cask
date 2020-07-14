cask 'melodics' do
  version '2.1.4694'
  sha256 '2bbc08ab64da58ad075e2f70b641e45a29afa56d8367550a1e7cf62645e67d32'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
