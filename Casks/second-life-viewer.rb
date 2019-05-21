cask 'second-life-viewer' do
  version '6.2.2.527338'
  sha256 '2a30142f20e6844549111be8c702202100c7bf9347eb833e95f1bd636dbc3952'

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
