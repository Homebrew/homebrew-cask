cask "masscode" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.7.0"

  if Hardware::CPU.intel?
    sha256 "58dbb36f2a18dca9e8fb54f1d0996915f31448eb4b56dcb352ddbf8ebc228d60"
  else
    sha256 "75364a04fdb5548ef1e7d56d009e59dda77c62f89af8a74dbf008a52f2b96c11"
  end

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "https://github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Open-source code snippets manager for developers"
  homepage "https://masscode.io/"

  app "massCode.app"
end
