cask 'bluej' do
  version '4.1.3'
  sha256 'f7fdd3c94912cec06da69f8db482f7f41ad115026e73f767c1ff62d18ce60081'

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name 'BlueJ'
  homepage 'https://www.bluej.org/'

  app "BlueJ #{version.sub(%r{[a-z]$}, '')}/BlueJ.app"
end
