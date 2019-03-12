cask 'knime' do
  version '3.7.1'
  sha256 '7a5bbf3c0ed3be89808984a0974581941b7412a5263260a7f9d8c5db040b4648'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast 'https://www.knime.com/downloads/download-knime'
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  app "KNIME #{version}.app"
end
