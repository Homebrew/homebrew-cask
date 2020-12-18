cask "prowritingaid" do
  version "2.0.48"
  sha256 "f9bae3c805d9261622b85372af0167579302ea9746d628653154b601dbfc43ef"

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_sizeandmodified.cgi?url=https://cdn.prowritingaid.com/prowritingaid-desktop/ProWritingAid.dmg"
  name "ProWritingAid"
  desc "Grammar checker, style editor, and writing mentor"
  homepage "https://prowritingaid.com/"

  app "ProWritingAid.app"
end
