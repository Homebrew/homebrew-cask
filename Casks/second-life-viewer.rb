cask 'second-life-viewer' do
  version '6.4.5.544028'
  sha256 '4eddc88d1cc7c39d6473449f7cf8605190031dbc9bcd3ba005f71c4c842e25b3'

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  appcast 'https://secondlife.com/support/downloads/'
  name 'Linden Lab Second Life Viewer'
  homepage 'https://secondlife.com/'

  app 'Second Life Viewer.app'

  zap trash: [
               '~/Library/Application Support/SecondLife',
               '~/Library/Caches/SecondLife',
             ]
end
