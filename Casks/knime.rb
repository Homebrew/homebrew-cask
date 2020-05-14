cask 'knime' do
  version '4.1.3'
  sha256 'c87665c6746462c23f7ba567a281d6fd7146987b7c918a1ce0f9ac04bb82cdcc'

  # download.knime.org/analytics-platform/macosx/ was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast 'https://www.knime.com/downloads/download-knime'
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  app "KNIME #{version}.app"
end
