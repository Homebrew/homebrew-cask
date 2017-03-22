cask 'knime' do
  version '3.3.1'
  sha256 '8e077481eb59b8f0ca7ac33a1ddc991e0ec1537c00be3a7661cf5cc1b37de1ca'

  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.org/'

  depends_on macos: '>= :lion'

  app "KNIME #{version}.app"
end
