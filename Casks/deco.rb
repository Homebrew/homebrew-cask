cask 'deco' do
  version '0.6.0'
  sha256 'e3462d65b1678b3d8e40c3cc5f436ef7ed34611d8d9b5063a7b029d10cbe961f'

  # s3-us-west-2.amazonaws.com/decopkgs was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/decopkgs/osx/Deco-0.6.0.pkg'
  appcast "https://deco-nuts.herokuapp.com/update/osx/#{version}", checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Deco'
  homepage 'https://www.decosoftware.com'
  license :affero

  installer manual: 'Deco-0.6.0.pkg'

  uninstall pkgutil: 'com.decosoftware.deco'

  zap delete: [
                '/Library/Application Support/com.decosoftware.Deco',
                '~/.Deco',
              ]
end
