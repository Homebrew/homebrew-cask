cask "eddie" do
  version "2.21.6"

  if Hardware::CPU.intel?
    if MacOS.version <= :mojave
      sha256 "a446563a6beb6f91542d6afbd6f90f6745b7a36fef363a13506cff9d8f078c78"

      url "https://eddie.website/download/?platform=macos-10.9&arch=x64&ui=ui&format=disk.dmg&version=#{version}",
          verified: "eddie.website/"
    else
      sha256 "1ad3dfffbc092bae9a1c8daa90761e3b7aab9a4e08e1335e4893b270251bd085"

      url "https://eddie.website/download/?platform=macos-10.15&arch=x64&ui=ui&format=disk.dmg&version=#{version}",
          verified: "eddie.website/"
    end
  else
    sha256 "c358a461c5de62c09edbe44eaf4760ac293271e7fa125ecb2f20e3db26000db4"

    url "https://eddie.website/download/?platform=macos-10.15&arch=arm64&ui=ui&format=disk.dmg&version=#{version}",
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
