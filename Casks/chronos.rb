cask 'chronos' do
  version '3.2.2'
  sha256 '5893654f622998bb9d08ab6d1e1cee56fab2ab6ebd240dea45f3754a83d08c4a'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
