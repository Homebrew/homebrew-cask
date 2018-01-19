cask 'png2icns' do
  version '0.1'
  sha256 '9418b2785b84f5d1d6de92e8be7fc4cdc3d1953340f3fdca31f04397bd7df4f7'

  url "https://github.com/bitboss-ca/png2icns/archive/v#{version}.zip"
  appcast 'https://github.com/bitboss-ca/png2icns/releases.atom',
          checkpoint: '4d51bb9fd3951a4af35a59714eff0bfd298fa9543ef63ea84bef531b7ff4e730'
  name 'png2icns'
  homepage 'https://github.com/bitboss-ca/png2icns'

  binary "png2icns-#{version}/png2icns.sh", target: 'png2icns'
end
