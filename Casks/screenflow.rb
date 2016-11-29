cask 'screenflow' do
  version '6.2'
  sha256 '55082a700ceee0e250664b1f15ee61fc2e1befb88bd7308a42ca1cbc9c9e3e96'

  url "https://www.telestream.net/download-files/screenflow/#{version.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: '84ddb2c3ddf8729712ae1cdee0f220946af0487b2d56d42e63dfa3edc82f58bd'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
