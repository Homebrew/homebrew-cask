cask 'second-life-viewer' do
  version '5.0.3.324435'
  sha256 'f34b7a99fef9939265611aaa2470a54a985406b3b7955a85505c3c8cea6a8f75'

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_i386.dmg"
  name 'Linden Lab Second Life Viewer'
  homepage 'https://secondlife.com/'

  depends_on macos: '>= :lion'

  app 'Second Life Viewer.app'

  zap delete: [
                '~/Library/Application Support/SecondLife',
                '~/Library/Caches/SecondLife',
              ]
end
