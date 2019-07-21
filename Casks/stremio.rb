cask 'stremio' do
  version '4.4.77'
  sha256 'b4d707e38a035aa43fc6ecc3e28c3b43f7624677c8686dc7cb12396f4c2939e0'

  url "https://dl.strem.io/mac/v#{version}/Stremio+#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.strem.io/download?platform=mac%26four=true'
  name 'Stremio'
  homepage 'https://www.strem.io/'

  app 'Stremio.app'
end
