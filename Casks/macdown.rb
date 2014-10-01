class Macdown < Cask
  version '0.2.5.1'
  sha256 '4929637cf1997809dc3070037b5e52b039561751e47118ea3aa436fecf6d4a90'

  url "http://macdown.uranusjr.com/download/v#{version}/"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml'
  homepage 'http://macdown.uranusjr.com/'
  license :unknown

  app 'MacDown.app'
end
