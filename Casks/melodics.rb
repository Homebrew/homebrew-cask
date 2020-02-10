cask 'melodics' do
  version '2.1.4040'
  sha256 'd54dbd22ea793dcae3a0d5f61102d5e9a6c5df99f3a1b4f09bdabc59983601b0'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
