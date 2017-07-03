cask 'beamer' do
  version '3.3.1'
  sha256 '53d712e1037ccdb0334caf6615c2da97c239f1a4f3eeb65d0547a018d6447d26'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast "https://beamer-app.com/beamer#{version.major}-appcast.xml",
          checkpoint: 'a91f0d52dfbeb5060670038c147c7cfccb7d4b7aba027dcf9e0f87962319ae06'
  name 'Beamer'
  homepage 'https://beamer-app.com/'

  app 'Beamer.app'
end
