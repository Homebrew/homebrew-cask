cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "3318a501e64dea4c3c7db848f97d1134916c138d39672963b27d4f41e3e69f1c",
         intel: "acf2b0bfa73c4ed0294a9e9a264e21fa70f20e3a4c4b300354f99c18c1752dd7"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_#{arch}_#{version}",
      verified: "github.com/gilbertchen/duplicacy/"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  conflicts_with cask: "duplicacy"

  binary "duplicacy_osx_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
