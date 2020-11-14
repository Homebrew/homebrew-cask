cask "codespace" do
  version "1.4.0"
  sha256 "5c8b8a1ab56b49cf324feb6528ec011990b9f2614a38502e32cd61e8254f9058"

  url "https://codespace.app/download/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://codespace.app/download/latest&user_agent=Mac%20OS%20X"
  name "Codespace"
  homepage "https://codespace.app/"

  depends_on macos: ">= :el_capitan"

  app "Codespace.app"
end
