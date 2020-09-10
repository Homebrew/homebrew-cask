cask "sizzy" do
  version "0.33.0"
  sha256 "487c1ccc30213f343d7c3d94a797322764b024ad4edc7875c88b5dd330285e35"

  url "https://sizzy.co/get-app"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X"
  name "Sizzy"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
