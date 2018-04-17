cask 'marvel' do
  version '7.4.2'
  sha256 '609e1e9f1c8a785988f9d673dddd649ae470aef5bbe2df0884f24f3f763eb5bf'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml',
          checkpoint: '89c371f7ba088ad017a16c62d8ad0274a57e42ee21dec184566706800bb1be19'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
