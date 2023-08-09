cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.0.8"
  sha256 arm:   "080f4fd99ebef91bec3c76daedc5450bc25c7590042c5cc46f60d8809a13bafd",
         intel: "d75887173abbef4070d2cab2d18529576222e1e899fb72652dc6df696fe5a5be"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
