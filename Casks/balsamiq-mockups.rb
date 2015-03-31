cask :v1 => 'balsamiq-mockups' do
  version '3.0.5'
  sha256 'd0f733a5e971182857397e21de335fd24f326c7c622a4810edf7abc8fc730133'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'http://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
