cask :v1 => 'bluej' do
  version '3.1.6'
  sha256 'b53cb1ce8384845767074480b26b2795aecf7d0f0e9027747c0106918a7471a6'

  url "http://www.bluej.org/download/files/BlueJ-#{version.delete('.')}.zip"
  name 'BlueJ'
  homepage 'http://www.bluej.org'
  license :gpl

  app "BlueJ #{version}/BlueJ.app"
end
