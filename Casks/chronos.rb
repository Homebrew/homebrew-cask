cask 'chronos' do
  version '3.1.0'
  sha256 '0d39f2aca0d967c40595804c4b51cd07e81b325fb5bdbaa4a081de8153d2d70b'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
