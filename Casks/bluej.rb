cask 'bluej' do
  version '4.0.1'
  sha256 '9277ec8d133d27111b933cbc4fb38f335200e8623d3bb41ac67c314ba33f0525'

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name 'BlueJ'
  homepage 'https://www.bluej.org/'

  app "BlueJ #{version.sub(%r{[a-z]$}, '')}/BlueJ.app"
end
