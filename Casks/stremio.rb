cask 'stremio' do
  version '4.4.106'
  sha256 '6bd8b13cd96738028eae7f3c62fedf1d9c5dfcb6f5b8ba9186c998a97e8b31a7'

  url "https://dl.strem.io/mac/v#{version}/Stremio+#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.strem.io/download?platform=mac%26four=true'
  name 'Stremio'
  homepage 'https://www.strem.io/'

  app 'Stremio.app'
end
