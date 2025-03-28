cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.0"
  sha256 arm:   "fe4966525610a4638bd9fe30c537422b6086e68e87bbade244a82bf5bb79dad6",
         intel: "7563c8400be4ed236d65db5ec332474404a3363e616408b8276d09159e57109b"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
