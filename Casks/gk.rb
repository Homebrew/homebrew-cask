cask "gk" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.0.3"
  sha256 arm:   "cf2b35bd4b72f30d694992d5427bcdbddc8643229cc5e69c1059e157cf70aab3",
         intel: "8ea6e1d0cf7fcac3b945a8d8c893aa0696735aafc86ee46d78d4893005aeab41"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "GitKraken on the command-line"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  uninstall
end
