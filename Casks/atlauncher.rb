cask "atlauncher" do
  version "3.4.18.2"
  sha256 "39976a11e3809905a3c48a2ec4f72c30f4c9d1e190ff81281166a47007fb9793"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
