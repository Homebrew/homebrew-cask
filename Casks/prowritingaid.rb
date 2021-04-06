cask "prowritingaid" do
  version "2.0.50"
  sha256 "8549bdee7f71a3057e7f4dcb905a9ca78badf48a28e77fc50e249cf2af8976cd"

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_sizeandmodified.cgi?url=https://cdn.prowritingaid.com/prowritingaid-desktop/ProWritingAid.dmg"
  name "ProWritingAid"
  desc "Grammar checker, style editor, and writing mentor"
  homepage "https://prowritingaid.com/"

  app "ProWritingAid.app"
end
