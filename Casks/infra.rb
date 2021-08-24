cask "infra" do
  version "0.46.0"
  sha256 "d33af6e480e0fc04f7ad97b18a662fced3f0e7bc56cfc91fc13c3e1d85ad10ff"

  url "https://download.infra.app/darwin/Infra-darwin-universal-#{version}.zip"
  name "infra"
  desc "Kubernetes desktop client"
  homepage "https://infra.app/"

  app "Infra.app"
end
