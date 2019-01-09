cask 'knime' do
  version '3.6.2'
  sha256 '07864562620358dc84cd32a33f644dc3893917a56ae8d8220fc37a29f33430f3'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast 'https://www.knime.com/downloads/download-knime'
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  app "KNIME #{version}.app"
end
