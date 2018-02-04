cask 'marvel' do
  version '7.3.4'
  sha256 'bcc2637a77285839249bd6417f6efab6e462fb10a0027ac275fda61b1bdd5a29'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml',
          checkpoint: '3c5f2ddfca2939ebef5ce23ee8f9ea10c2c735fa38bd37c06f38f560756eb9fb'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
