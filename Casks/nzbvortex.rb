cask 'nzbvortex' do
  version '3.2.3'
  sha256 '2fe8542f0d4bcd6b63ee785390f2e4e625030a865ea36231a61009a74018597d'

  url "http://www.nzbvortex.com/downloads/NZBVortex-#{version}.zip"
  appcast "https://www.nzbvortex.com/update/appcast_v#{version.major}.xml",
          checkpoint: 'b33807fd07bedf1c70dc50ddf63ec6b36c7aed159db9b28443c18effa82558ad'
  name 'NZBVortex'
  homepage 'http://www.nzbvortex.com/'
  license :commercial

  app "NZBVortex #{version.major}.app"
end
