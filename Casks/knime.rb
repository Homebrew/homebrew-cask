cask 'knime' do
  version '3.6.0'
  sha256 '508b6a9b0530d04a3b3100ba1041378160d9b6065bd6a5775471614866c71e00'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  depends_on macos: '>= :lion'

  app "KNIME #{version}.app"
end
