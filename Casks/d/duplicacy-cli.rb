cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "30655d46cd7995a2275864e6fee485c3ca51c227daba9aca5b433bad484631a4",
         intel: "21b017e4d67fa5fddb6fd7376fabbdb0ceb4d5e73f49336fc23f71978e122ae7"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_#{arch}_#{version}",
      verified: "github.com/gilbertchen/duplicacy/"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  conflicts_with cask: "duplicacy"

  binary "duplicacy_osx_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
