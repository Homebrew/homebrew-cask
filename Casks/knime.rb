cask "knime" do
  version "4.2.2"
  sha256 "b7cf1003443304ccf82359ebc23985a81b7e2bedee232030d16dd3a4f0f0804e"

  # download.knime.org/analytics-platform/macosx/ was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast "https://www.knime.com/downloads/download-knime"
  name "KNIME Analytics Platform"
  desc "Is the open source software for creating data science"
  homepage "https://www.knime.com/"

  app "KNIME #{version}.app"
end
