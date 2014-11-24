cask :v1 => 'bluej' do
  version '3.1.4'
  sha256 '507ce17037010e7a52684f97b32a07a391aca8fb1fa194748d35036242c87f80'

  url "http://www.bluej.org/download/files/BlueJ-#{version.gsub('.', '')}.zip"
  homepage 'http://www.bluej.org'
  license :gpl

  app "BlueJ #{version}/BlueJ.app"
end
