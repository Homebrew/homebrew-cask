cask 'second-life-viewer' do
  version '6.4.3.542964'
  sha256 '6e7750c35f6ee0b9273f0195dbd4e3b97acea4df1e7a394ee86a13b9f0b764a5'

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
