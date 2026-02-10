cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"

  version "3.2.5"
  sha256 arm:   "717ef792f38c3ead9f068e8b9f32e1d67641a974bd46ee29416d27afda8fbe7f",
         intel: "3621e3fc9ecafe37f500fe0effeaf1b0a79cfe26ea7135fe3bf34ddb8e787bdd"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_osx_#{arch}_#{version}",
      verified: "github.com/gilbertchen/duplicacy/"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  binary "duplicacy_osx_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
