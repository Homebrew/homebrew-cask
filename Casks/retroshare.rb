cask "retroshare" do
  version "0.6.6"
  sha256 "9a52ae0da3235faba1cb3f4e2b59916d1d0883378ab538c443122f96b935335d"

  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version}/RetroShare-#{version}-MacOS-10.14-Qt-5.14.1.dmg",
      verified: "github.com/RetroShare/RetroShare/"
  name "RetroShare"
  desc "Friend-2-Friend and secure decentralised communication platform"
  homepage "https://retroshare.cc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "retroshare.app"
end
