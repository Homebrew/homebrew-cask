cask "knime" do
  version "4.2.1"
  sha256 "945ac26a78b94ce128882bf2b9410ff230a5dacfa614ad0eb69533c494636cac"

  # download.knime.org/analytics-platform/macosx/ was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast "https://www.knime.com/downloads/download-knime"
  name "KNIME Analytics Platform"
  homepage "https://www.knime.com/"

  app "KNIME #{version}.app"
end
