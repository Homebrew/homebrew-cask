cask 'notable' do
  version '1.7.1'
  sha256 'e43e38afff6cb2f4997c4f2f6e62b123f57efaef2f7ae63b34e5812cd9c8a576'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
