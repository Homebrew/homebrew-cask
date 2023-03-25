cask "eddie" do
  arch arm: "arm64", intel: "x64"

  version "2.21.8"

  on_mojave :or_older do
    sha256 "a446563a6beb6f91542d6afbd6f90f6745b7a36fef363a13506cff9d8f078c78"

    url "https://eddie.website/download/?platform=macos-10.9&arch=#{arch}&ui=ui&format=disk.dmg&version=#{version}",
        verified: "eddie.website/"
  end
  on_catalina :or_newer do
    sha256 arm:   "04edf9a6aa7311a62eb6827db44c7ed8ee677a0e2581d08a76f2bf004cf3ec0f",
           intel: "9aecfd234ca1b19eee6518b1142643764a503d28b8ee3d873085fda22d25af85"

    url "https://eddie.website/download/?platform=macos-10.15&arch=#{arch}&ui=ui&format=disk.dmg&version=#{version}",
        verified: "eddie.website/"
  end

  name "Air VPN"
  name "Eddie"
  desc "OpenVPN UI"
  homepage "https://airvpn.org/macos/"

  livecheck do
    url "https://github.com/AirVPN/Eddie"
    strategy :git
  end

  app "Eddie.app"

  uninstall quit: "com.eddie.client"
end
