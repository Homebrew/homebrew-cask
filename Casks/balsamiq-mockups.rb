cask :v1 => 'balsamiq-mockups' do
  version '3.0.7'
  sha256 'db96ef5316039b44a9d5cebea17ac285e39d7293440240cb649c3daa004023e8'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'http://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
