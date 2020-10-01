cask "sizzy" do
  version "0.36.0"
  sha256 "1c5f01eb9182f489cd7d95bd2c7c5edc31924c58a6806208f6086367b0aabde7"

  url "https://sizzy.co/get-app"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X"
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
