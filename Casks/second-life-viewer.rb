cask 'second-life-viewer' do
  version '5.0.8.329115'
  sha256 'a09688f9e682749fe35518f7813b8f5bb6a7d2ee6d21fed5b13366ba25886bce'

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
