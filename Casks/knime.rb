cask 'knime' do
  version '3.3.2'
  sha256 '5502be5a3ea3454cf244436361536db884dd3bdb761861e7e3cd6e4dd8eb729a'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  depends_on macos: '>= :lion'

  app "KNIME #{version}.app"
end
