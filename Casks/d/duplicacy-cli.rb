cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "e265e06cc1a8fc6b111640b59d7dab84c7774e4684358e8d22db3b9abcba8734",
         intel: "01c2824910309b01beb2425714d81a79afd4d9f986b217998b7674da9e76c8b7"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_#{arch}_#{version}",
      verified: "github.com/gilbertchen/duplicacy/"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  conflicts_with cask: "duplicacy"

  binary "duplicacy_osx_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
