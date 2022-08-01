cask "masscode" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.10.0"

  if Hardware::CPU.intel?
    sha256 "dc6297fdda10434c1bcaf882c677d783db5106f82c6a39cca172fe4503f9040c"
  else
    sha256 "180f58ebd83fcead99c271f66e8212650c9bf634d2ac862c17e78422acd56f40"
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
