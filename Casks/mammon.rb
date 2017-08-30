cask 'mammon' do
  version '0.2.3'
  sha256 'b234bdfafa646e91f598e424d9f0fb93fbbf55b971dec7a8a6d87bfa6823797a'

  # u5790728.dl.dropboxusercontent.com was verified as official when first introduced to the cask
  url 'https://u5790728.dl.dropboxusercontent.com/u/5790728/Mammon-latest.zip'
  name 'Mammon'
  homepage 'https://teamfox.co/mammon/'

  app 'Mammon.app'

  zap trash: '~/Library/Application Support/Mammon'
end
