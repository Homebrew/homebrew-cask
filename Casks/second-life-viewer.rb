cask 'second-life-viewer' do
  version '5.0.4.325124'
  sha256 '1b58247d166f70272080cc45dbede4fa9ea2c15e3b2d7352923e2ac2a4f3988c'

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
