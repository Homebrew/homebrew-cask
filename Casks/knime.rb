cask 'knime' do
  version '4.1.1'
  sha256 '4904d7fb32faf9bfab26401ec51875601d1110021471fb3fa323e6d51317da7b'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast 'https://www.knime.com/downloads/download-knime'
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  app "KNIME #{version}.app"
end
