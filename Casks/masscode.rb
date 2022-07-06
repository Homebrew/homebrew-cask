cask "masscode" do
  version "2.7.0"
  sha256 "75364a04fdb5548ef1e7d56d009e59dda77c62f89af8a74dbf008a52f2b96c11"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}-arm64.dmg",
      verified: "https://github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Open-source code snippets manager for developers"
  homepage "https://masscode.io/"

  app "massCode.app"
end
