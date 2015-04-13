cask :v1 => 'balsamiq-mockups' do
  version '3.0.8'
  sha256 '4c59bbf509c2cb812635a7405c6b8c1197a3d8b6373f3db5c4c29f69c8bb860a'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'http://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
