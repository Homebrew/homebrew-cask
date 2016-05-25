cask 'deco' do
  version '0.6.0'
  sha256 'e3462d65b1678b3d8e40c3cc5f436ef7ed34611d8d9b5063a7b029d10cbe961f'

  # s3-us-west-2.amazonaws.com/decopkgs was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/decopkgs/osx/Deco-#{version}.pkg"
  appcast "https://deco-nuts.herokuapp.com/update/osx/#{version}",
          checkpoint: 'e3462d65b1678b3d8e40c3cc5f436ef7ed34611d8d9b5063a7b029d10cbe961f'
  name 'Deco'
  homepage 'https://www.decosoftware.com'
  license :affero

  installer manual: "Deco-#{version}.pkg"

  uninstall pkgutil: 'com.decosoftware.deco'

  zap delete: [
                '~/.Deco',
                '~/Library/Application Support/com.decosoftware.Deco',
              ]
end
