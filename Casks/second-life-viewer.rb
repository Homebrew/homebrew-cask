cask 'second-life-viewer' do
  version '6.3.2.530962'
  sha256 'b0f53ea8647dce7add48b86078143199b48a019fc580077047b7e52f24ce17a4'

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
