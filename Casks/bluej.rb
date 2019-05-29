cask 'bluej' do
  version '4.2.1'
  sha256 '666d08e2a1c7986328bcdafd9885553cefd9e5974ac26705a3645a2037598d79'

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name 'BlueJ'
  homepage 'https://www.bluej.org/'

  app "BlueJ #{version.sub(%r{[a-z]$}, '')}/BlueJ.app"
end
