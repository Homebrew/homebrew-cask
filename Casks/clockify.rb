cask 'clockify' do
  version '2.1.8_39'
  sha256 'a1c4de8a696b1164bb56c40a7e1ed99c395a8a9796678c3a43f86a0268153455'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  app 'Clockify Desktop.app'
end
