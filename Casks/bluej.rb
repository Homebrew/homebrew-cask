cask 'bluej' do
  version '4.2.0'
  sha256 '21c5759875e9cbfe63b13b6ae5c7b31b9e1d3cdd8ebee48a2905d81e0fcb0e22'

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name 'BlueJ'
  homepage 'https://www.bluej.org/'

  app "BlueJ #{version.sub(%r{[a-z]$}, '')}/BlueJ.app"
end
