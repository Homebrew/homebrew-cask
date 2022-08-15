cask "masscode" do
  arch arm: "-arm64"

  version "3.3.0"

  on_intel do
    sha256 "9816615f089592f62af1fcb6e7ec3c2f3cc2f2344053c2e11f7f23b95b642bac"
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
