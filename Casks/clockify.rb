cask 'clockify' do
  version '2.2.2_53'
  sha256 '5a90fc49e1d48bebd1dd2c9f26a05b008c5ed6733b22ef166f9d31a86f6cde9d'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  app 'Clockify Desktop.app'
end
