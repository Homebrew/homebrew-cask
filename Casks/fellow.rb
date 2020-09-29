cask "fellow" do
  version "1.0.12"
  sha256 "8a03ea0a694d6d205e4d632f19b78e2f7adc79acc48375e75c9a4cc5b4867d4e"

  url "https://cdn.fellow.app/desktop/#{version}/darwin/stable/Fellow.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://fellow.app/desktop/download/darwin/latest/"
  name "Fellow"
  desc "Collaborative meeting agendas, notes, and action items"
  homepage "https://fellow.app/"

  app "Fellow.app"
end
