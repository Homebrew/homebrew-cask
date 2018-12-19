cask 'second-life-viewer' do
  version '6.0.0.520636'
  sha256 'ffb353ad1cfcaae2b9e459dc034a26846fa8f9a20b0b1b8f4fddfb95793543dd'

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
