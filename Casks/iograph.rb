cask :v1 => 'iograph' do
  version '1.0.1'
  sha256 '9da847f06c59b51bb484e3c38a8c5725d37c92099aea3eda79d099a52bcd68e2'

  url "http://iographica.com/download/osx/IOGraph_v#{version.gsub('.','_')}.dmg"
  homepage 'http://iographica.com/'
  license :unknown

  app 'IOGraph.app'
end
