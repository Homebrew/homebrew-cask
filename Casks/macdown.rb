class Macdown < Cask
  version '0.2.4'
  sha256 'd8bdec9c696a70ca88a885fad0d5f1804501921d48ea875ac08e3f5b0a9fe859'

  url "http://macdown.uranusjr.com/download/v#{version}/"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml'
  homepage 'http://macdown.uranusjr.com/'

  link 'Build/MacDown.app'
end
