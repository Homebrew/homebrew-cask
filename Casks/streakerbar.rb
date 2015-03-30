cask :v1 => 'streakerbar' do
  version '1.0'
  sha256 '70c4e5863d1eaaf4c8ed96e1e110ca9f48de811bdffb92beb024827e08947e72'

  url "http://github.com/chaserx/streakerbar/releases/download/v#{version}/streakerbar.zip"
  appcast 'http://github.com/chaserx/streakerbar/releases.atom'
  name 'streakerbar'
  homepage 'https://github.com/chaserx/streakerbar'
  license :mit

  app 'streakerbar.app'
end
