cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.36"
  sha256 arm:   "ca29fb39b4bd0811d17f4058104df30d0dbd89e735c674d654c44d43a0473c33",
         intel: "13566d4b4df75f2372fcb668326267cb0df80c8eafe78a0a6d77f683bc1c6238"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
