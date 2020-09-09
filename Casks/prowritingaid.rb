cask "prowritingaid" do
  version "2.0.46"
  sha256 "c6430ef93c66f0f9d539802b722325448375687ffa0eba96fafc690ef3d14e9a"

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  appcast "https://prowritingaid.com/en/App/DesktopHistory"
  name "ProWritingAid"
  homepage "https://prowritingaid.com/"

  app "ProWritingAid.app"
end
