cask "sizzy" do
  version "0.39.1"
  sha256 "0394fee19c0d7a2c90152d86751426c4f636bccb3f7316be8e8bf4fcc3f6c1b8"

  url "https://sizzy.co/get-app"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X"
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
