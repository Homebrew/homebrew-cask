cask :v1 => 'balsamiq-mockups' do
  version '3.1.3'
  sha256 '3ea7314b54c53fd7aadb065c3d77bc2cd93a5ad65ec7579b50a1756d918f39cf'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
