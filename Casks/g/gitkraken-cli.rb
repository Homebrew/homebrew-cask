cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "2.1.2"
  sha256 arm:   "b5ddb317193dd544bc36ec56f64f03e17afee39b917caea5534cbdfcdd1df166",
         intel: "0f0b03609d756bd2c2338c5445c08e2c4db6f7f2bd9ce067230731d31a6b6fd4"

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
