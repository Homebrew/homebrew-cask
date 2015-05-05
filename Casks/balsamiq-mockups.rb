cask :v1 => 'balsamiq-mockups' do
  version '3.1.1'
  sha256 'a180aa09e7091fa757ee12b077da0a7c3744efe1932fabfd7e0f2b2eb9381796'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'http://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
