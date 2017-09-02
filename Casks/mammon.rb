cask 'mammon' do
  version :latest
  sha256 :no_check

  # dl.dropboxusercontent.com/u/5790728 was verified as official when first introduced to the cask
  url 'https://dl.dropboxusercontent.com/u/5790728/Mammon-latest.zip'
  name 'Mammon'
  homepage 'https://teamfox.co/mammon/'

  app 'Mammon.app'

  zap trash: '~/Library/Application Support/Mammon'
end
