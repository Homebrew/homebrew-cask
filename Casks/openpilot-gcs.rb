cask 'openpilot-gcs' do
  version '15.05.2'
  sha256 'b092843c4d9288806b2baf2b4120591603e0eb486613426d14cf03259233e410'

  url "https://wiki.openpilot.org/download/attachments/361104/OpenPilot-RELEASE-#{version}-osx.dmg"
  name 'OpenPilot Ground Control Station'
  homepage 'https://wiki.openpilot.org/display/WIKI/OpenPilot+Downloads'
  license :gpl

  app 'OpenPilot GCS.app'
end
