cask 'chronos' do
  version '4.0.1'
  sha256 '0eb727155613ba7b4b67c3c1226b1314ce7e3075de010c704f8af5382fcca408'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
