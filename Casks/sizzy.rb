cask "sizzy" do
  version "0.43.1"
  sha256 "a93dff96ea9cc01c34a06e13e928fb5e326375099d5ece7b57887a2bc14a5867"

  url "https://sizzy.co/get-app"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X"
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
