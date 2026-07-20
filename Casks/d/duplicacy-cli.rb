cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "3.2.5"
  sha256 arm:          "717ef792f38c3ead9f068e8b9f32e1d67641a974bd46ee29416d27afda8fbe7f",
         x86_64:       "3621e3fc9ecafe37f500fe0effeaf1b0a79cfe26ea7135fe3bf34ddb8e787bdd",
         arm64_linux:  "9c27d8ba149e67d0bc58406c6b3218661d870cb07e265aec31563540f8f20598",
         x86_64_linux: "548526d462fb38c23f2bf62ea3b1177b8ad11cc1499fa3dbe092a607d68d84f5"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_#{os}_#{arch}_#{version}",
      verified: "github.com/gilbertchen/duplicacy/"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  binary "duplicacy_#{os}_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
