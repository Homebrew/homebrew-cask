cask "codespace" do
  version "1.4.0"
  sha256 :no_check

  url "https://codespace.app/download/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://codespace.app/download/latest&user_agent=Mac%20OS%20X"
  name "Codespace"
  homepage "https://codespace.app/"

  depends_on macos: ">= :el_capitan"

  app "Codespace.app"
end
