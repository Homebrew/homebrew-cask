cask :v1 => 'balsamiq-mockups' do
  version '3.0.3'
  sha256 'eb646ab36bde4e9ea581f70d2dc532fd3aa6a1a2bf3e4d422632182a52b37a67'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'http://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
