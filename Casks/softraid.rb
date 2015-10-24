cask :v1 => 'softraid' do
  version '5.0.7'
  sha256 'b37fc5bb131ad05af020fcb1aec196a06bff4e4f9bf62e6a1c6ae5a9141ad5d3'

  url "http://www.softraid.com/updates/SoftRAID%20#{version}.dmg"
  name 'SoftRAID'
  homepage 'http://www.softraid.com/'
  license :commercial

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
