cask "studio-3t" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"
  livecheckarch = Hardware::CPU.intel? ? "" : "_aarch64"

  version "2022.2.0"

  if Hardware::CPU.intel?
    sha256 "201b99316f65687b5c6642362a3723c9ea1382e0625aea1469f41bec4e46494e"
  else
    sha256 "a970b96b3e370f0b6f630fcf3c707358d0ce7a2ea6595eed8ca99453d01c8938"
  end

  url "https://download.studio3t.com/studio-3t/mac#{arch}/#{version}/Studio-3T.dmg"
  name "Studio 3T"
  desc "IDE, client, and GUI for MongoDB"
  homepage "https://studio3t.com/"

  livecheck do
    url "https://studio3t.com/download-thank-you/?OS=osx#{livecheckarch}"
    regex(%r{/v?(\d+(?:\.\d+)+)/Studio[._-]?3T\.dmg}i)
  end

  auto_updates true

  app "Studio 3T.app"
end
