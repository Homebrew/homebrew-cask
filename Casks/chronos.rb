cask 'chronos' do
  version '4.0.2'
  sha256 '64c28aadbbfb207935a690118a44f388d8acb10194d14dd58845ec330db1c0a5'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
