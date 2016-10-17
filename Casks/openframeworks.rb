cask 'openframeworks' do
  version '0.9.4'
  sha256 '63f215d7107d77126f69608a5e2404faf4d5a8f23865fcf20834eac8c9e55884'

  url "http://openframeworks.cc/versions/v#{version}/of_v#{version}_osx_release.zip"
  appcast 'https://github.com/openframeworks/openFrameworks/releases.atom',
          checkpoint: '63d63c85f28cc2931a15235c3b15127e94d044561243ab23eedbf03f05449515'
  name 'Openframeworks'
  homepage 'http://openframeworks.cc/'

  suite "of_v#{version}_osx_release"
end
