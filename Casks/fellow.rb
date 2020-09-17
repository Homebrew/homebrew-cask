cask "fellow" do
  version "1.0.9"
  sha256 "e09d34cfc8ed73f80ee88ecc0ca53d048c80f9f588dd940a500b947713ddf4c0"

  url "https://cdn.fellow.app/desktop/#{version}/darwin/stable/Fellow.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://fellow.app/desktop/download/darwin/latest/"
  name "Fellow"
  desc "Collaborative meeting agendas, notes, and action items"
  homepage "https://fellow.app/"

  app "Fellow.app"
end
