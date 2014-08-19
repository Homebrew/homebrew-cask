class Macdown < Cask
  version '0.2.3'
  sha256 '9eb9afc3c09122c446f2b12ef1f04e2201c97b08c73dcd47011f3b75cdc32f00'

  url "http://macdown.uranusjr.com/download/v#{version}/"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml'
  homepage 'http://macdown.uranusjr.com/'

  link 'MacDown.app'
end
