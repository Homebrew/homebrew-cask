cask 'melodics' do
  version '2.1.4788'
  sha256 'f001e1226cff04f8a0109c9919e1e61c37ac1faf5dcea92c3048d029de589436'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
