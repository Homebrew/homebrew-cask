cask 'bluej' do
  version '3.1.7'
  sha256 'b693557212b61de537299519bcb40d7b5ac00c2ba60b9c88e900dced80c8c363'

  url "https://www.bluej.org/download/files/BlueJ-#{version.no_dots}.zip"
  name 'BlueJ'
  homepage 'https://www.bluej.org'

  app "BlueJ #{version}/BlueJ.app"
end
