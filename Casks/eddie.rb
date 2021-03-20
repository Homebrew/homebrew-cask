cask "eddie" do
  version "2.20.0"

  if MacOS.version <= :mojave
    sha256 "a446563a6beb6f91542d6afbd6f90f6745b7a36fef363a13506cff9d8f078c78"

    url "https://eddie.website/download/?platform=macos-10.9&arch=x64&ui=ui&format=disk.dmg&version=#{version}",
        verified: "eddie.website/"
  else
    sha256 "3f960bfd47ef5847197012bf0455003f6b4999b9b6c52e58f61e8d5c2e81d263"

    url "https://eddie.website/download/?platform=macos-10.15&arch=x64&ui=ui&format=disk.dmg&version=#{version}",
        verified: "eddie.website/"
  end

  appcast "https://github.com/AirVPN/Eddie/releases.atom"
  name "Air VPN"
  name "Eddie"
  desc "OpenVPN UI"
  homepage "https://airvpn.org/macos/"

  app "Eddie.app"

  uninstall quit: "com.eddie.client"
end
