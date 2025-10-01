cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.38"
  sha256 arm:   "5acdb26d234a33363d17fe8807e5e6c9941a386ed46c6892726e67496d481111",
         intel: "47d215c1839101ee1d06f9e9a95a89d94cb34ad5ae4c9a3d870e1e737abe30a9"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
