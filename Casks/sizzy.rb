cask "sizzy" do
  version "0.29.0"
  sha256 "2ceccea52024a992833d3cdeb60b05f71806ade22c279d6631e9352600dac021"

  url "https://sizzy.co/get-app"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X"
  name "Sizzy"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
