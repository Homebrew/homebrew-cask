cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.75"
  sha256 arm:          "df85c55d86586e268b3683b31a8c88e3243a4908c2d6edf00dd145900c1305fe",
         intel:        "924ace8b322a4bab3e960ea583ced38528ab7f2fb425fe11d907d54f6bce00ec",
         arm64_linux:  "8d75e0e840ba72d47a4572c8494aca2f41eae276ef29f8d9713faeda22ea354f",
         x86_64_linux: "b69e8c527913f7526e27f2b8040d7336a31978a0b753e51f3b86e26cb2156686"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
