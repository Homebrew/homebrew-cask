cask "masscode" do
  arch arm: "-arm64"

  version "3.2.0"

  on_intel do
    sha256 "9816615f089592f62af1fcb6e7ec3c2f3cc2f2344053c2e11f7f23b95b642bac"
  end
  on_arm do
    sha256 "e758d959852d735d7ebd0de106d37605c8067bfe6723bd697afbc042ddb4059e"
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
