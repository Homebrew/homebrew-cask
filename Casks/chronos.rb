cask 'chronos' do
  version '3.2.5'
  sha256 '5dd38500185043d82c0b5d579de0595aeab9de976648e3ac441f7dc8aa498365'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
