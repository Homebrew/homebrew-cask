cask 'chronos' do
  version '3.2.0'
  sha256 '12f84f5af60797e701262a35954e8ed31422035c35040bd9af6592354614c6ce'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
