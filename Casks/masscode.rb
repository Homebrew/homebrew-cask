cask "masscode" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.8.1"

  if Hardware::CPU.intel?
    sha256 "4871633f59c0f7995dc352c6a75b03d2eb49cbb849b53b0f2b15e4d92a72b95a"
  else
    sha256 "66f041dd5a38ef6a63bd2229c5254760f9528e16f8938dc14c25b2ecba04eafd"
  end

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "https://github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Open-source code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "massCode.app"
end
