cask "sizzy" do
  version "0.39.0"
  sha256 "dd3a4d8aae18ef547f4a8c44d5e87c944f4d536afab6c4c99fb3999e2c3037d2"

  url "https://sizzy.co/get-app"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X"
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
