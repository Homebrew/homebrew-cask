cask 'surge' do
  version '3.0.6-781'
  sha256 '475ae96cd817bb772fd121b099084b47e9cecd1e3bde0a6a87e75c5d38bbda2b'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Surge #{version.major}.app"
end
