cask 'screenflow' do
  version '7.0'
  sha256 '25b010fe9bf1c8f7721fb7950619c2cdaf68ae448b4da90464ed2e4c37207e5b'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: '9b5177fa05ec22ef90bd78f0e43fae0da4722df250c897b33ea12fa9d3990bc1'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
