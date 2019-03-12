cask 'chronos' do
  version '3.0.1'
  sha256 '198b30184ac23ca025cf8da8b14dd98f39285cc565073303d6fccb3ffc4fd5c9'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
