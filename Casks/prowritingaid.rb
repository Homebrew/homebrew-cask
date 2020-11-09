cask "prowritingaid" do
  version "2.0.47"
  sha256 "43f30a5a7135026f36849c6b21b1321a82684d189cf7494ca4cff6c3e53805ee"

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_sizeandmodified.cgi?url=https://cdn.prowritingaid.com/prowritingaid-desktop/ProWritingAid.dmg"
  name "ProWritingAid"
  desc "Grammar checker, style editor, and writing mentor"
  homepage "https://prowritingaid.com/"

  app "ProWritingAid.app"
end
