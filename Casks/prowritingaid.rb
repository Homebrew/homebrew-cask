cask "prowritingaid" do
  version "2.0.44"
  sha256 "d89184e6ac7c05ea493eaecccfbe6770e84801ace0c9c4d6ba12debdfda79e1e"

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  appcast "https://prowritingaid.com/en/App/DesktopHistory"
  name "ProWritingAid"
  homepage "https://prowritingaid.com/"

  app "ProWritingAid.app"
end
