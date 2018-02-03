cask 'knime' do
  version '3.5.1'
  sha256 '513332f2864fe0b478c9c6174dd3f34731aca4d7e1fcdff0d02e3c0d4a3ff8c8'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  depends_on macos: '>= :lion'

  app "KNIME #{version}.app"
end
