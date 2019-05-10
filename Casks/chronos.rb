cask 'chronos' do
  version '3.2.3'
  sha256 'ad7d97026c5be38ab689c3e9809a8a73e34c3ce3f07478b78f97043f4a4f03b9'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
