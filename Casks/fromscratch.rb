cask 'fromscratch' do
  version '1.0.1'
  sha256 '6c3d25a26bca0ab018f808856afb09adfbb14c622e7aff69e47f6d26e6912036'

  # github.com/Kilian/fromscratch was verified as official when first introduced to the cask
  url 'https://github.com/Kilian/fromscratch/releases/download/v1.0.0/FromScratch-darwin-x64-1.0.1.zip'
  appcast 'https://github.com/Kilian/fromscratch/releases.atom',
          checkpoint: '6141270b2639d2ed6e1f86949c323492f181badfe6a5b877372b525fdebf04a6'
  name 'FromScratch'
  homepage 'https://fromscratch.rocks/'
  license :mit

  app 'FromScratch.app'
end
