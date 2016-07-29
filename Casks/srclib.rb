cask 'srclib' do
  version '0.2.5'
  sha256 '3b8f0e466475daa7b4d57947177beb10e4dae8f36bfd16d6661bb97cd921049f'

  # api.equinox.io/1/Applications/ap_BQxVz1iWMxmjQnbVGd85V58qz6 was verified as official when first introduced to the cask
  url 'https://api.equinox.io/1/Applications/ap_BQxVz1iWMxmjQnbVGd85V58qz6/Updates/Asset/src.zip?os=darwin&arch=amd64&channel=stable'
  appcast 'https://github.com/sourcegraph/srclib/releases.atom',
          checkpoint: '75e057570b48195ba90cde3992ec0f5963e8f1c5a7360058741560d8f6847fdd'
  name 'srclib'
  homepage 'https://srclib.org/'
  license :mit

  binary 'src'
end
