cask 'mammon' do
  version :latest
  sha256 :no_check

  # dropboxusercontent.com/s/kc8a9rcq2kpt94x was verified as official when first introduced to the cask
  url 'https://dl.dropboxusercontent.com/s/kc8a9rcq2kpt94x/Mammon-latest.zip'
  name 'Mammon'
  homepage 'https://teamfox.co/mammon/'

  app 'Mammon.app'

  zap trash: '~/Library/Application Support/Mammon'
end
