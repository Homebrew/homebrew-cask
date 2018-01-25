cask 'bluej' do
  version '4.1.2'
  sha256 '64f33dc1df320fbe742b3972b4563fea8f3f4786133f2dd39202a8d67160786d'

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name 'BlueJ'
  homepage 'https://www.bluej.org/'

  app "BlueJ #{version.sub(%r{[a-z]$}, '')}/BlueJ.app"
end
