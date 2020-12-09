cask "fellow" do
  version "1.0.18"
  sha256 "14e1c4f5e9d82809dddffc76ed3981096a6fee116d1304f8818eb0e8186eaf99"

  url "https://cdn.fellow.app/desktop/#{version}/darwin/stable/Fellow.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://fellow.app/desktop/download/darwin/latest/"
  name "Fellow"
  desc "Collaborative meeting agendas, notes, and action items"
  homepage "https://fellow.app/"

  app "Fellow.app"
end
