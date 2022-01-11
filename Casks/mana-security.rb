cask "mana-security" do
  version "2.4.2"
  sha256 :no_check

  url "https://download.manasecurity.com/"
  name "Mana Security"
  desc "Vulnerability Management for individuals"
  homepage "https://www.manasecurity.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "Mana Security.app"

  uninstall quit:       "com.manasecurity.mana",
            login_item: "Mana Security"

  zap trash: [
    "~/Library/Application Support/Mana Security",
    "~/Library/Caches/com.manasecurity*",
    "~/Library/Logs/Mana Security",
    "~/Library/Preferences/com.manasecurity*",
    "~/Library/Saved Application State/com.manasecurity*",
  ]
end
