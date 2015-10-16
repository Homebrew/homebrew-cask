cask :v1 => 'second-life-viewer' do
  version '3.8.1.303130'
  sha256 'eecb67fbbba4b988a858a83318d87d5f99451dbfa567b75d4bd91059904bca42'

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
