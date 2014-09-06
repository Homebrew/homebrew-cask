class Macdown < Cask
  version '0.2.4'
  sha256 '8720bb9644b391a9a6fa06af50a57f7fff495c2da80573fc0077445d9ca67367'

  url "http://macdown.uranusjr.com/download/v#{version}/"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml'
  homepage 'http://macdown.uranusjr.com/'

  link 'MacDown.app'
end
