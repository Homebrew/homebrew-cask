cask "sizzy" do
  version "0.41.0"
  sha256 "b8257d6a59f8c54cb4728e6087397ad0722a84f12358b3c44de85013de82dd64"

  url "https://sizzy.co/get-app"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sizzy.co/get-app&user_agent=Intel%20Mac%20OS%20X"
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
