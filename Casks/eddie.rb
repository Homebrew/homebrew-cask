cask "eddie" do
  version "2.18.9"
  sha256 "4b6e233496f8d63d1cbab01a2f24e46c480741746c1b1b6e7468442d41c648c1"

  # eddie.website/ was verified as official when first introduced to the cask
  url "https://eddie.website/download/?platform=macos&arch=x64&ui=ui&format=disk.dmg&version=#{version}"
  appcast "https://github.com/AirVPN/Eddie/releases.atom"
  name "Air VPN"
  name "Eddie"
  desc "OpenVPN UI"
  homepage "https://airvpn.org/macos/"

  app "Eddie.app"

  uninstall quit: "com.eddie.client"
end
