cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.0-beta4"
  sha256 arm:   "8d2399da82a05bb2c7b8b0f6685b73c221d076696b8e899666fb599b6e940239",
         intel: "2de7472741d2488f959e0520add97199652f228879c0467a982fccdf7ef7c49a"

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
