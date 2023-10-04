cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"

  version "3.2.2"
  sha256 arm:   "7f2b40d403b3bdb86d13e8258bfe1beb99958661996859e922bcf0ef60a7b42f",
         intel: "4c0abf6df94e9f986f9a6e4a6ac8e0153db5ea08495a73c4e0792e491040b3fd"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_#{arch}_#{version}",
      verified: "github.com/gilbertchen/duplicacy/"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  conflicts_with cask: "duplicacy"

  binary "duplicacy_osx_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
