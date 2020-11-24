cask "sizzy" do
  version "0.44.0"
  sha256 "171e6befab2c7ad81f65ecae76a3df65561605ba66172c8a6f46a774d39b5de7"

  url "https://sizzy.co/get-app"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X"
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
