cask 'chronos' do
  version '2.8.6'
  sha256 '20bb6e8aeda84c61f4af5c6136d96458502587496455a838b3631b1de8ec36ed'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
