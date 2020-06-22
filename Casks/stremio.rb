cask 'stremio' do
  version '4.4.116'
  sha256 '8a336308dcf64082bfb6569e72b3f87a8da0114893af3c1ab2844d987cac2cff'

  url "https://dl.strem.io/shell-osx/v#{version}/Stremio+#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.strem.io/download?platform=mac%26four=true'
  name 'Stremio'
  homepage 'https://www.strem.io/'

  app 'Stremio.app'
end
