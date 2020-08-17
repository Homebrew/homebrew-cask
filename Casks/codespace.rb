cask "codespace" do
  version "1.3.0"
  sha256 "01aa33f6db172b3bf7d401f71188fbd51afe690fb4987759965d3c6f7d414f30"

  url "https://codespace.app/download/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://codespace.app/download/latest&user_agent=Mac%20OS%20X"
  name "Codespace"
  homepage "https://codespace.app/"

  depends_on macos: ">= :el_capitan"

  app "Codespace.app"
end
