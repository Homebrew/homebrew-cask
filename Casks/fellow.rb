cask "fellow" do
  version "1.0.17"
  sha256 "e774f48ab63009190de94ffc470455dac89bb1f3c1c469e61f5c4982737b1888"

  url "https://cdn.fellow.app/desktop/#{version}/darwin/stable/Fellow.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://fellow.app/desktop/download/darwin/latest/"
  name "Fellow"
  desc "Collaborative meeting agendas, notes, and action items"
  homepage "https://fellow.app/"

  app "Fellow.app"
end
