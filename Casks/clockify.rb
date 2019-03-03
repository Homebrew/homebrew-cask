cask 'clockify' do
  version '2.2.3_57'
  sha256 '86d993cd13175b5431b26d420baede92020f9ca1086ad214a6de907e99cee61f'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  app 'Clockify Desktop.app'
end
