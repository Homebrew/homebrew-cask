cask 'screenflow' do
  version '9.0.1'
  sha256 '1d7f5681406b437bc340985c5c0d10f82a1cd4a49b874c490d8e8f6ec30a0370'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'ScreenFlow.app'
end
