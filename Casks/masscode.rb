cask "masscode" do
  arch arm: "-arm64"

  version "3.6.0"
  sha256 arm:   "374ce8df6617269813a7cabf44f54045d87159cd869d28b02af68979b41a0879",
         intel: "0721db8ab72cc2891442719d9c096066f4765482db66faa21f8122b249d942d7"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "massCode.app"
end
