cask "osbuddy" do
  version "1.0"
  sha256 :no_check

  url "http://cdn.rsbuddy.com/OSBuddy.dmg"
  name "OSBuddy"
  desc "RuneScape toolkit"
  homepage "https://rsbuddy.com/osbuddy"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "OSBuddy.app"
end
