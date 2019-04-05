cask 'second-life-viewer' do
  version '6.1_1.525446'
  sha256 '520e718ed194b7eea322e1e4926eda2aca5a93df878cfd53c5672f98da0dd35f'

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
