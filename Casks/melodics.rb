cask 'melodics' do
  version '2.1.3328'
  sha256 '4426b83f6b6f3cae208835c0a48c482d106c5f73862c17383929141e8ec765ef'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
