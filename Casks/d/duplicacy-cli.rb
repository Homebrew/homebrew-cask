cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"

  version "3.2.4"
  sha256 arm:   "4e834ab166ea7579bc0e4e3d9fb5825ad9ef8b002c354e7d5d58b0b8d6cf8620",
         intel: "c910e83d7d2aac4bfa287cf9552167301dbe673da9c8fc58aa1318e908024b7e"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_#{arch}_#{version}",
      verified: "github.com/gilbertchen/duplicacy/"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  conflicts_with cask: "duplicacy"

  binary "duplicacy_osx_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
