cask :v1 => 'second-life-viewer' do
  version '3.7.28.300918'
  sha256 '2d6fa6c60a3bfbd5ed6b08b5455ed6b0d4c7820b7c5f60b50f9a20be371e91ef'

  url "http://download.cloud.secondlife.com/Viewer_3/Second_Life_#{version.gsub('.','_')}_i386.dmg"
  name 'Second Life Viewer'
  homepage 'https://secondlife.com/'
  license :gpl
  tags :vendor => 'Linden Lab'

  app 'Second Life Viewer.app'

  depends_on :macos => '>= :lion'

  zap :delete => [
                  '~/Library/Application Support/SecondLife',
                  '~/Library/Caches/SecondLife',
                 ]
end
