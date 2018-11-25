cask 'clockify' do
  version '2.2.1_49'
  sha256 'f22a3816fb1b91a3702239186abd57ba7da20376dfde4e573ea0fa5feab93cd0'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  app 'Clockify Desktop.app'
end
