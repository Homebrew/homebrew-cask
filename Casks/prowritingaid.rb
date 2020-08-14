cask "prowritingaid" do
  version "2.0.43"
  sha256 "b0114ff686e0b30b135376799b452d14661f6a7cf81c96547aafd8bbec8afc09"

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  appcast "https://prowritingaid.com/en/App/DesktopHistory"
  name "ProWritingAid"
  homepage "https://prowritingaid.com/"

  app "ProWritingAid.app"
end
