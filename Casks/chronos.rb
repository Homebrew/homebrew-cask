cask 'chronos' do
  version '4.1.0'
  sha256 'b4b878792da56ba94a2370ad5219c9906f085b560c74a0db7a33df86fb0b5dc6'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
