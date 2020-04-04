cask 'melodics' do
  version '2.1.4208'
  sha256 'd28563884a51158dba465f956b894e13195f77988ad459322f745d572d7ba5f1'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
