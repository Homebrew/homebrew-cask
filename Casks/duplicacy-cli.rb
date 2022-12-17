cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "80ef00fc6f4d335e85c3366d70db8297159f8bba639ed6ebbe4fac22cc161f74",
         intel: "1feddbd59ea3563f23d38f3aa9cd2abfd1e391ce08f5ac831e97bc330dd92cf2"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_#{arch}_#{version}",
      verified: "github.com/gilbertchen/duplicacy/"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  conflicts_with cask: "duplicacy"

  binary "duplicacy_osx_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
