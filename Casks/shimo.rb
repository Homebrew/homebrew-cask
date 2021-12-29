cask "shimo" do
  version "5.0.4,8890"
  sha256 "0f624d29248c2cb3d77ede2cc8ce8e30cdddaa7358d444571dd2ec1932f6958c"

  url "https://downloads.mailbutler.io/Shimo_#{version.csv.first}_#{version.csv.second}.zip",
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
