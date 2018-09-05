cask 'crosscloud' do
  version :latest
  sha256 :no_check

  # update-2.crosscloud.me/release/darwin_x6 was verified as official when first introduced to the cask
  url 'https://update-2.crosscloud.me/release/darwin_x64/CrossCloud-latest.dmg'
  name 'CrossCloud'
  homepage 'https://crosscloud.io/'

  app 'CrossCloud.app'
end
