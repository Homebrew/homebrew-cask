cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.77"
  sha256 arm:          "20aed4aeb58efec0f7b81208194289e822246c1ea3cadcde8053d18753932210",
         intel:        "11601fb4a1ef76b253afb7b28df5dcd3d8e2674ae37042dbdf42517265fc1866",
         arm64_linux:  "4734ae4d247e1ca0e7397c53298f3b9b1f5bcd0f0dc5ed7a1087287a7c9f34e2",
         x86_64_linux: "43251581b7040708cce0628fc4538f81b4e35dec325d4d1a91c9ae601049083a"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
