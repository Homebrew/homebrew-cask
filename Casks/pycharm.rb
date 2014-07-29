class Pycharm < Cask
  version '3.4.1'
  sha256 'f2af3859b0376927f591d5eac3b8d2c8196d712af811f27cc269965a03324a78'

  url "http://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  homepage 'http://www.jetbrains.com/pycharm/'

  link 'PyCharm.app'
end
