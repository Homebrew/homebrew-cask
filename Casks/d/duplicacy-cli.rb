cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "3.3.0"
  sha256 arm:          "ebdfd22bd32f0622901ca017adfc12a70ffee969acde71ee5fbbfdfc76e3fff2",
         intel:        "fcb828eddacd0c780d8d65cd425bc9f02dc5680c4d10556fc5fc68698fba5faf",
         arm64_linux:  "0e28cc3d943b2357136364d73a66ac82309ed9ecc36a3f9fea64b23ca1f8427c",
         x86_64_linux: "a2ac4db7018633b116506e081a029dd6635e9619cf24b85c33144640613416ee"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_#{os}_#{arch}_#{version}"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  binary "duplicacy_#{os}_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
