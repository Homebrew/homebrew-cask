cask 'knime' do
  version '3.5.2'
  sha256 '63e6a3ecdf9e58815db450f65f74dbbca0ed02c2e845d0b2bd9e4378b80d1e9c'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  depends_on macos: '>= :lion'

  app "KNIME #{version}.app"
end
