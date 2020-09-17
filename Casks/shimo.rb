cask "shimo" do
  version "5.0.2_8880"
  sha256 "09364783b6dcc13b1ef54feaf4c57d1518f25a6c6e3884c9ab6c2a6077942b2a"

  # downloads.mailbutler.io/ was verified as official when first introduced to the cask
  url "https://downloads.mailbutler.io/Shimo_#{version}.zip"
  appcast "https://www.shimovpn.com/appcast#{version.major}.php"
  name "Shimo"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.shimovpn.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Shimo.app"
end
