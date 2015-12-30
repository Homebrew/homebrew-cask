cask 'softraid' do
  version '5.1'
  sha256 '3ce535878cb92e7401f044a683c7e6e2e6ec6576695adac85f15c10c2d9b1548'

  url "https://www.softraid.com/updates/SoftRAID%20#{version}.dmg"
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'
  license :commercial

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
