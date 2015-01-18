cask :v1 => 'ampps' do
  version '2.8'
  sha256 '9014b7ceb885972142172ea171d21d57c5f9a406ca04266e7357c3ca9c030a7e'

  url "http://files.ampps.com/AMPPS-#{version}.dmg"
  name 'AMPPS'
  homepage 'http://www.ampps.com'
  license :gratis

  suite 'AMPPS'
end
