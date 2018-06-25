cask 'second-life-viewer' do
  version '5.1.4.515016'
  sha256 '2bab017313d5114fae0e1df6b71b4b4a29b8319f4d028072b4b70571c23202ad'

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
