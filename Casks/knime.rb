cask 'knime' do
  version '4.2.0'
  sha256 '72e803969c995f88ff100fecd5fb2cc4f58937becb2fd6d831eae6514f4780b5'

  # download.knime.org/analytics-platform/macosx/ was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast 'https://www.knime.com/downloads/download-knime'
  name 'KNIME Analytics Platform'
  homepage 'https://www.knime.com/'

  app "KNIME #{version}.app"
end
