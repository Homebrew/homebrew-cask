cask 'second-life-viewer' do
  version '6.2.1.526845'
  sha256 '364b06ad29e8a6f5a4679da9e626f99b0baf72ba735bd8b90ed680b96b3eabcc'

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
