cask 'melodics' do
  version '2.1.3936'
  sha256 'f8c6b3fcceb46a666eaf61ced6c3972cd3249aff4949724a5d2566e660c421d4'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
