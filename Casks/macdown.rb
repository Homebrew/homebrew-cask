class Macdown < Cask
  version '0.1.2'
  sha256 '18c5c4117733a3e639189e29895568a9c2b6e33a96a2dd60c91cf892c43cdf49'

  url "http://macdown.uranusjr.com/download/v#{version}/"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml'
  homepage 'http://macdown.uranusjr.com/'

  link 'MacDown.app'
end
