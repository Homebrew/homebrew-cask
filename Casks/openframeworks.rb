cask 'openframeworks' do
  version '0.9.8'
  sha256 '483a298afdf52f0da4574d35fd67babce6a29f2ce7c0af917d790f6ffaf1302f'

  url "http://openframeworks.cc/versions/v#{version}/of_v#{version}_osx_release.zip"
  appcast 'https://github.com/openframeworks/openFrameworks/releases.atom',
          checkpoint: '991f9af155a29375905ee42cc8bb1716f3cce0a9d6880286af8ca93e6518af56'
  name 'Openframeworks'
  homepage 'http://openframeworks.cc/'

  suite "of_v#{version}_osx_release"
end
