cask 'second-life-viewer' do
  version '6.3.7.535996'
  sha256 '848e89a6c8e3edfe0d2bfb2c23ce28067601cc3b12dca69be2fb6e3aefde81bb'

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
