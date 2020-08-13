cask "sizzy" do
  version "0.30.0"
  sha256 "b2aa15247e0cf6d10e4265d9b867ea3cc2943c998781b60e631ebb483226a6ab"

  url "https://sizzy.co/get-app"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X"
  name "Sizzy"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
