cask 'second-life-viewer' do
  version '5.1.7.516813'
  sha256 'e5e2499e08f25c5739c112a20cb0ff635ff3ead7c8ca7128d3fb5c6258d52ff6'

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  name 'Linden Lab Second Life Viewer'
  homepage 'https://secondlife.com/'

  depends_on macos: '>= :lion'

  app 'Second Life Viewer.app'

  zap trash: [
               '~/Library/Application Support/SecondLife',
               '~/Library/Caches/SecondLife',
             ]
end
