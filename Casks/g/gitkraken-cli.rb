cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.3"
  sha256 arm:   "c33b4c91d23713fa8a5210fdeda5d792fad79b1b6eb1c1586d30d0d40b97cc9a",
         intel: "d7979718fac6e35cd14871d6c4c1a89b778d93bd1f0be134e819945649a5abd6"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
