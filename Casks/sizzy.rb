cask "sizzy" do
  version "0.31.0"
  sha256 "5ff3d73f4dfe3ee5d1949315b46c041a0adffa3853e2dbbae2ed475699ad1010"

  url "https://sizzy.co/get-app"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X"
  name "Sizzy"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
