cask 'bluej' do
  version '4.1.4'
  sha256 '996f9d991aaa8fa56d3757fca45bf05d2c2fd80a5b51611588e7c802ab8e2d47'

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name 'BlueJ'
  homepage 'https://www.bluej.org/'

  app "BlueJ #{version.sub(%r{[a-z]$}, '')}/BlueJ.app"
end
