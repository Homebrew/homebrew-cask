cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"

  version "3.2.3"
  sha256 arm:   "efaadc14cfb07e305ec00a95b2fcdc4f28db5ae5bedda0d5b4cbfb24386d53fc",
         intel: "49c6f617ef9fc954865d54b5445eaf37ee7afb0f0dd72ec993cf21ec6cd710f1"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_#{arch}_#{version}",
      verified: "github.com/gilbertchen/duplicacy/"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  conflicts_with cask: "duplicacy"

  binary "duplicacy_osx_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
