cask 'knime' do
  version '3.4.2'
  sha256 '27baf2cf739c38c64936a668d8b3210165d5451f1fab5a3756260045fab13511'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  depends_on macos: '>= :lion'

  app "KNIME #{version}.app"
end
