cask 'second-life-viewer' do
  version '6.2.4.528492'
  sha256 '29d3b7fba7aeb08b24e63db13ef9437e5c4cd9ee5958eff26c37d9dc02c835d8'

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
