cask "masscode" do
  arch arm: "-arm64"

  version "3.3.0"

  on_intel do
    sha256 "4d299e8705fee5e761938d95e3794dcfbee3e0e9d10ee7c9b3efa672c5e86841"
  end
  on_arm do
    sha256 "73dd77635943f0c20bc9a87d28f05a3aad906993697f2a697d1d3f028bc5d4b4"
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
