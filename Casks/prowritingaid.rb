cask "prowritingaid" do
  version "2.0.45"
  sha256 "54737c12dd7f5f60eff39943361e4ce13aa3498b9a4529ca11c9508c0cebcd8f"

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  appcast "https://prowritingaid.com/en/App/DesktopHistory"
  name "ProWritingAid"
  homepage "https://prowritingaid.com/"

  app "ProWritingAid.app"
end
