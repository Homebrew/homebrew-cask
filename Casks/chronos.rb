cask 'chronos' do
  version '3.2.1'
  sha256 '3a7b055e1870e8f53823395a7882de33165b12c759e65d756f9bf371d343de83'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
