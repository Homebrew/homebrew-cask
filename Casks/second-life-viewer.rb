cask 'second-life-viewer' do
  version '6.4.5.544639'
  sha256 'fb65ee7f6bdd9a40c52792dc6b9a08ccdc4cd2a380f4480e085633bd05e128c5'

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
