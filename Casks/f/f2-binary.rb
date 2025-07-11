cask "f2-binary" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.2"
  sha256  arm:   "4f70b60248ab4293a4f34e79a17e353284bd93e386089a0242914830b7e1b2b3",
          intel: "4463d3d5d137d5ddb94f7cbfece7d35b4c0950c56e151f980d07306a49a5ad30"

  url "https://github.com/ayoisaiah/f2/releases/download/v#{version}/f2_#{version}_darwin_#{arch}.tar.gz"

  name "f2-binary"
  desc "Command-line batch renaming tool"
  homepage "https://github.com/ayoisaiah/f2"

  # Upstream may add/remove tags before releasing a version, so we check
  # GitHub releases instead of the Git tags.
  livecheck do
    url :stable
    strategy :github_latest
  end

  binary "f2"
  bash_completion "scripts/completions/f2.bash", target: "f2"
  fish_completion "scripts/completions/f2.fish"
  zsh_completion "scripts/completions/f2.zsh", target: "_f2"

  conflicts_with formula: "f2"
end
