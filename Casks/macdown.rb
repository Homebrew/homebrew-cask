class Macdown < Cask
  version '0.2.2'
  sha256 '052a827c907f3409393c5c7684340eee14b72336bb3441eed6f2eac8d11af5f1'

  url "http://macdown.uranusjr.com/download/v#{version}/"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml'
  homepage 'http://macdown.uranusjr.com/'

  link 'MacDown.app'
end
