cask 'openframeworks' do
  version '0.10.0'
  sha256 '23faa4c34decf7b1721df566e9b0e6717bffc6dcab3be4badde1ccd8b907ea12'

  url "http://openframeworks.cc/versions/v#{version}/of_v#{version}_osx_release.zip"
  appcast 'https://github.com/openframeworks/openFrameworks/releases.atom',
          checkpoint: 'b2722a481be3767330c6048528c783c6b958340028df8db3bfd6d3216c2e2800'
  name 'Openframeworks'
  homepage 'http://openframeworks.cc/'

  suite "of_v#{version}_osx_release"
end
