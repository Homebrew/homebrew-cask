cask "fellow" do
  version "1.0.15"
  sha256 "bc9712f077b055d93ed638203910aa85e79cf59bd0fae52a92ecd879f6d34318"

  url "https://cdn.fellow.app/desktop/#{version}/darwin/stable/Fellow.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://fellow.app/desktop/download/darwin/latest/"
  name "Fellow"
  desc "Collaborative meeting agendas, notes, and action items"
  homepage "https://fellow.app/"

  app "Fellow.app"
end
