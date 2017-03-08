cask 'crosscloud' do
  version :latest
  sha256 :no_check

  url 'https://update-2.crosscloud.me/release/darwin_x64/CrossCloud-latest.dmg'
  name 'CrossCloud'
  homepage 'https://crosscloud.me/'

  app 'CrossCloud.app'
end
