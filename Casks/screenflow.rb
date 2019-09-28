cask 'screenflow' do
  version '8.2.4'
  sha256 'cae68e858b4f5eef3b8dd6d5d56c3f265d1c24080094f8d88a9b36e44769446a'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'ScreenFlow.app'
end
