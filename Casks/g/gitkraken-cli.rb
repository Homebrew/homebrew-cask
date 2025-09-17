cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.27"
  sha256 arm:   "99b054d8deb7bc417dec29bf05e230634cbce4a2512e5a27b772496f5daa6602",
         intel: "f70da39d03421db80aa2011a107f9f2b65d95363da3dd34ae193ac0d552a7b9d"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
