cask :v1 => 'bluej' do
  version '3.1.5'
  sha256 'a9b30c1dcfd8f4245f22fb000a64ec09c1a8c353d4880cb818cc14b1f6fdf6ef'

  url "http://www.bluej.org/download/files/BlueJ-#{version.gsub('.', '')}.zip"
  name 'BlueJ'
  homepage 'http://www.bluej.org'
  license :gpl

  app "BlueJ #{version}/BlueJ.app"
end
