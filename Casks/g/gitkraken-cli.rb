cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "2.1.1"
  sha256 arm:   "b6f451ad9246686010a65e1cb861a4b50626363397fea2afe551c1c496770ad4",
         intel: "be1449d3b8f1caaf66a1d717007f0c42a7095bd9afeaecca7d18e7b9349a6f15"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"
  binary "gk.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/gk"
  binary "_gk",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_gk"
  binary "gk.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/gk.fish"

  zap trash: "~/.gitkraken"
end
