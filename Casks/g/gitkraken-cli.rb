cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.68"
  sha256 arm:          "b4454c1efdf2dec0fc0d4a4c04935b1e1cf4e9b964e1e3497bfbab69899b10c0",
         intel:        "28821627df8b1215171695d9928772316d7166fd51ebd54446d570a3fbb8935a",
         arm64_linux:  "4a7851b5128f0e5f5b030d97a4d0696b9845b57489221b3decccfa8130ba72ba",
         x86_64_linux: "7fb6b920bcbf8239db75baa44bbeaaddabef0b241a5269ce0e837b3914538c36"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
