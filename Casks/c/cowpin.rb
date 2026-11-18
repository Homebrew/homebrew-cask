cask "cowpin" do
  version "1.3.3"
  sha256 "80f123e7276c4e95d1f40329c708e776c98b55a27cd41e2923b4465bf4e27715"

  url "https://www.cowpin.com/downloads/Cowpin.dmg"
  name "Cowpin"
  desc "Private bookmarking app with one-click browser saving"
  homepage "https://www.cowpin.com/?utm_source=homebrew#desktop-cli"

  livecheck do
    url "https://www.cowpin.com/downloads/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Cowpin.app"

  uninstall quit: "com.cowpin.desktop"

  zap trash: "~/Library/Preferences/com.cowpin.desktop.plist"
end
