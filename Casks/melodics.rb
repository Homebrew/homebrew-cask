cask 'melodics' do
  version '2.1.3816'
  sha256 'da8e5b0988477b21755260690da8835818ff89bdcf20ffbc49624ce27b0b6e4c'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
