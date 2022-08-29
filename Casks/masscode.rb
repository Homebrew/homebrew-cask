cask "masscode" do
  arch arm: "-arm64"

  version "3.4.1"
  sha256 arm:   "b9508b32b6b8606bd0bbcab482b9a75ef87186db181b48f1242c8ef83b6ee288",
         intel: "622ed42307902b194bf223f6b33a6c2c0cef11d23480986dfa30cd1be128edd9"

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
