cask "masscode" do
  arch arm: "-arm64"

  version "3.1.0"

  if Hardware::CPU.intel?
    sha256 "1f34814fbe163d903fe0de936ae2a298930178bea4d2f32d5a343f55d932da4c"
  else
    sha256 "aba03aed2f07d9aabe5ab385f872bf4281ccae3aee14bbd4845588fdc12cbb47"
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
