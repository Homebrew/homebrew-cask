cask 'marvel' do
  version '5.4'
  sha256 '72978a3834a524b67a78a91a15cd9ab36c9b9032d05a08bfc5852ae76b6e6930'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml',
          checkpoint: 'c637e5906e30b6bcfe8ea9a57e676f04da35660789726c8cae4f3d26af23ddc0'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
