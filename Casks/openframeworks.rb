cask 'openframeworks' do
  version '0.10.1'
  sha256 '2157b4c5368b65512682c77fc84c133db93daf8b7611f11818b813466b17c546'

  url "https://openframeworks.cc/versions/v#{version}/of_v#{version}_osx_release.zip"
  appcast 'https://github.com/openframeworks/openFrameworks/releases.atom'
  name 'Openframeworks'
  homepage 'https://openframeworks.cc/'

  suite "of_v#{version}_osx_release"
end
