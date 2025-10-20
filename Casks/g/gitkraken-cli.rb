cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.44"
  sha256 arm:   "7895d5383e947727f0bb7f2bd97179d6fb125f9a19544da5fb9a17d18b178a4d",
         intel: "c38b631c420aa7f5e753c032826be6bd1640e271d27625a610aa72ca04fb4b1a"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
