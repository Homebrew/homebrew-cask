cask 'chronos' do
  version '3.2.4'
  sha256 '8abeee610d4b1e369746119597c11c3c3595cfebb216eec4d78773a627fe93ba'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
