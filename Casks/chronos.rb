cask 'chronos' do
  version '4.0.0'
  sha256 '61cf0226df08976da430bcf997f54d9ce3fc280a213c832231a5476189391d3c'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
