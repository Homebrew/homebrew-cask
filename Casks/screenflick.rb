cask 'screenflick' do
  version '2.7.19'
  sha256 '0f919494bfdc60b3c6acc5035b891079f6781887ea1b2cefc7f33285c4b94a52'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: 'e3acad2605dcc0d4545bc103d2a9722aa56bb4f38711ee7559ff555df9bcb5af'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
