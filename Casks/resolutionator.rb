cask 'resolutionator' do
  version '1.1.1'
  sha256 'b4e0ba696aeee124c8d701371af71c4d1702fe0333fb955e3e5492d10f6ef679'

  url 'https://manytricks.com/download/resolutionator'
  appcast 'https://manytricks.com/resolutionator/appcast.xml',
          checkpoint: '6a6a79eceb2b0920958fb46b211bcac8ead6a3cb7c4e5e50e2b4b1655fefc34b'
  name 'Resolutionator'
  homepage 'https://manytricks.com/resolutionator/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Resolutionator.app'
end
