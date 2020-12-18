cask "stremio" do
  version "4.4.120"
  sha256 "e611290a6a591121f22c12718f2ba5919f63fc6b661793fc43e5da6d7ca7da87"

  url "https://dl.strem.io/shell-osx/v#{version}/Stremio+#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.strem.io/download?platform=mac%26four=true"
  name "Stremio"
  desc "Open-source media center"
  homepage "https://www.strem.io/"

  app "Stremio.app"
end
