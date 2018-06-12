cask 'chronos' do
  version '2.7.3'
  sha256 'ea58c022e457dcc9f57c58f913560db54a1d5845c4d0646e3d82bad8ee901a9f'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
