cask 'sus-inspector' do
  version '0.3.1'
  sha256 '19fd4c117f2efd631399491cff599a005df61adcd0b771c4b43747c663b56db7'

  url "https://github.com/hjuutilainen/sus-inspector/releases/download/v#{version}/SUS-Inspector-#{version}.dmg"
  appcast 'https://github.com/hjuutilainen/sus-inspector/releases.atom'
  name 'SUS Inspector'
  homepage 'https://github.com/hjuutilainen/sus-inspector'

  app 'SUS Inspector.app'
end
