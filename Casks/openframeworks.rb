cask 'openframeworks' do
  version '0.10.0'
  sha256 '23faa4c34decf7b1721df566e9b0e6717bffc6dcab3be4badde1ccd8b907ea12'

  url "https://openframeworks.cc/versions/v#{version}/of_v#{version}_osx_release.zip"
  appcast 'https://github.com/openframeworks/openFrameworks/releases.atom'
  name 'Openframeworks'
  homepage 'https://openframeworks.cc/'

  suite "of_v#{version}_osx_release"
end
