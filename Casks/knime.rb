cask 'knime' do
  version '3.5.3'
  sha256 '30cae5e96424e355a2c0a8715d62b5a989dcb59ffc70cff8ceecac52049cd856'

  # download.knime.org/analytics-platform/macosx was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  depends_on macos: '>= :lion'

  app "KNIME #{version}.app"
end
