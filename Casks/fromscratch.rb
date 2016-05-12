cask 'fromscratch' do
  version '1.0.1'
  sha256 '6c3d25a26bca0ab018f808856afb09adfbb14c622e7aff69e47f6d26e6912036'

  # github.com/Kilian/fromscratch was verified as official when first introduced to the cask
  url 'https://github.com/Kilian/fromscratch/releases/download/v1.0.0/FromScratch-darwin-x64-1.0.1.zip'
  appcast 'https://github.com/Kilian/fromscratch/releases.atom',
          checkpoint: '43642ecb7de1681a3c2c9d39a8e99474168cb10d'
  name 'FromScratch'
  homepage 'https://fromscratch.rocks/'
  license :mit

  app 'FromScratch.app'
end
