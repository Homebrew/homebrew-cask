cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.495.0"
  sha256 arm:          "410d5f6525c29bd71104fb85608b10c6379109f79a56f349f699e94f35499154",
         intel:        "b3d15fafff7de628c8653b346f18f614f68aae40e0e5a7ca43820f925e12658f",
         arm64_linux:  "ea9e686e9924e8ae3b45f338096309627bd3037e4ce920dc31d05a98e970f66b",
         x86_64_linux: "f524da109a403ae645bd6c9156338f4db460196dbd32f30daa616691e3d06e1f"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
