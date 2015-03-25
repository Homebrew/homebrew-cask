cask :v1 => 'balsamiq-mockups' do
  version '3.0.4'
  sha256 '2fc6f0f469106286d9f9507c880672ea0396f93889acb1fd8708341a55bb054a'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'http://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
