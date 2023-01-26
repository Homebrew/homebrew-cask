cask "gephi" do
  version "0.10.1"
  sha256 "abc7ca1ba7f2a91e51af716ad0a1a785a798f7bb7100841dfdb775895919f508"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-x64.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  app "Gephi.app"
end
