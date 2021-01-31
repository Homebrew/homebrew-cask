cask "eddie" do
  version "2.19.7"
  sha256 "b766c9a5fec0421d9cd3772e6c1986d6070e0bb9bfa4312e588d332ec786e586"

  url "https://eddie.website/download/?platform=macos-10.15&arch=x64&ui=ui&format=disk.dmg&version=#{version}",
      verified: "eddie.website/"
  appcast "https://github.com/AirVPN/Eddie/releases.atom"
  name "Air VPN"
  name "Eddie"
  desc "OpenVPN UI"
  homepage "https://airvpn.org/macos/"

  depends_on macos: ">= :catalina"

  app "Eddie.app"

  uninstall quit: "com.eddie.client"
end
