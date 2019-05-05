cask 'clockify' do
  version '2.2.5.69'
  sha256 'dc35b3a92338ae794825c1018f836c653e88a1613738592fcd09a9260ddd1a0a'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  depends_on macos: '>= :sierra'

  app 'Clockify Desktop.app'
end
