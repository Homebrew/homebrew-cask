cask :v1 => 'pycharm' do
  version '5.0.2'
  sha256 'a35146c4163b348000ba3db1a3db34341b6443cda6bf9242f181d84390a9d647'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :commercial

  app 'PyCharm.app'
end
