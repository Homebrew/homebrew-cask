cask 'aseprite' do
  version '1.1.13'
  sha256 'a7dd98d99a343a04a833522b64d185d6ff7bca44ddaf0376784ffb724816eb64'

  url "https://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'cf6fde61cc8d0eba7f306b303192503dd9f04083c202cef4736c6cdb88283b1a'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
