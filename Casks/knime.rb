cask 'knime' do
  version '4.0.2'
  sha256 '8c6a3cd3923e4e7dbb1f920d091741aa1368ea75f27bd5ba2de37f827a8d4408'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast 'https://www.knime.com/downloads/download-knime'
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  app "KNIME #{version}.app"
end
