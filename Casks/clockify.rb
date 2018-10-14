cask 'clockify' do
  version '2.1.6_35'
  sha256 'adf4e56de1b57664b6045cd157032b0a07c7b9836273e6689632851b0f6c92fc'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  app 'Clockify Desktop.app'
end
