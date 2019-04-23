cask 'clockify' do
  version '2.2.5_69'
  sha256 '6624c3b25cb8788dd72f46e4532e62266173250981dd61ba201cf9ff1870643f'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  app 'Clockify Desktop.app'
end
