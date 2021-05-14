cask "shimo" do
  version "5.0.3,8887"
  sha256 "6438ea5627591bbb12e8b7b2796ade24fe8d59712d8c523443a5632e66dfc9f3"

  url "https://downloads.mailbutler.io/Shimo_#{version.before_comma}_#{version.after_comma}.zip",
      verified: "downloads.mailbutler.io/"
  name "Shimo"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.shimovpn.com/"

  livecheck do
    url "https://www.shimovpn.com/appcast#{version.major}.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Shimo.app"
end
