cask 'knime' do
  version '4.1.0'
  sha256 'cac320f1e6ad31e31eba83db24e8a9d7900de598eec2493db3a39840dcb358b4'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast 'https://www.knime.com/downloads/download-knime'
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  app "KNIME #{version}.app"
end
