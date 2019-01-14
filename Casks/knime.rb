cask 'knime' do
  version '3.7.0'
  sha256 '17c3d61b8e0255fe2d6c4fe74d1a673d25f42c90726ba4c28d4d7a94cc76151b'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast 'https://www.knime.com/downloads/download-knime'
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  app "KNIME #{version}.app"
end
