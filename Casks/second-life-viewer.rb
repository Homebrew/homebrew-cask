cask 'second-life-viewer' do
  version '3.8.1.303130'
  sha256 'eecb67fbbba4b988a858a83318d87d5f99451dbfa567b75d4bd91059904bca42'

  url "http://download.cloud.secondlife.com/Viewer_3/Second_Life_#{version.gsub('.', '_')}_i386.dmg"
  name 'Linden Lab Second Life Viewer'
  homepage 'https://secondlife.com/'
  license :gpl

  depends_on macos: '>= :lion'

  app 'Second Life Viewer.app'

  zap delete: [
                '~/Library/Application Support/SecondLife',
                '~/Library/Caches/SecondLife',
              ]
end
