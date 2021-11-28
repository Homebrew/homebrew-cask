cask "mana-security" do
  version "2.4.0"
  sha256 :no_check

  url "https://download.manasecurity.com/"
  name "Mana Security"
  desc "Vulnerability Management for individuals"
  homepage "https://www.manasecurity.com/"

  livecheck do
    url "https://download.manasecurity.com/"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "Mana Security.app"

  uninstall login_item: "Mana Security",
            quit:       ["com.apple.systemevents"]

  zap trash: [
    "~/Library/Application Support/Mana Security/",
    "~/Library/Caches/com.manasecurity*",
    "~/Library/Logs/Mana Security",
    "~/Library/Preferences/com.manasecurity*",
    "~/Library/Saved Application State/com.manasecurity*",
  ]
end
