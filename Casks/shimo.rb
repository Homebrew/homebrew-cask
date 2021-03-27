cask "shimo" do
  version "5.0.3_8887"
  sha256 "6438ea5627591bbb12e8b7b2796ade24fe8d59712d8c523443a5632e66dfc9f3"

  url "https://downloads.mailbutler.io/Shimo_#{version}.zip",
      verified: "downloads.mailbutler.io/"
  appcast "https://www.shimovpn.com/appcast#{version.major}.php"
  name "Shimo"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.shimovpn.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Shimo.app"
end
