class Macdown < Cask
  version '0.2.1'
  sha256 '8c03a5c0ab31cb8841f2547bee251f17f70f2bf7598b6adf64b84384f85710eb'

  url "http://macdown.uranusjr.com/download/v#{version}/"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml'
  homepage 'http://macdown.uranusjr.com/'

  link 'MacDown.app'
end
