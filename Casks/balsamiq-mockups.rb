cask :v1 => 'balsamiq-mockups' do
  version '3.1.5'
  sha256 '738c986bc3d43d6a9cd0bbef9e8bd50edf5b5e7b865ff72c8fa9fe9048c662d8'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
