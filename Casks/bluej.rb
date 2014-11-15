cask :v1 => 'bluej' do
  version '3.1.1'
  sha256 '63be0772de6d35d3627db9c8ea1b26efbee08ba3e105ca51fd3a9809f09f8c39'

  url "http://www.bluej.org/download/files/BlueJ-#{version.gsub('.', '')}.zip"
  homepage 'http://www.bluej.org'
  license :gpl

  app "BlueJ #{version}/BlueJ.app"
end
