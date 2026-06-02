cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.499.0"
  sha256 arm:          "aeffa5c9cf70230363ac176a04a2594d1b7c03d65cd45176f849a3ecff164244",
         intel:        "3d48c05c15e9b049ce96f839e4f0a5ad39d0245783f3d1b5bf113faaa947d27b",
         arm64_linux:  "04e9ec7a144e45ec2d6bb1b57c67bd9142cae5e52be4a55f543d495809061420",
         x86_64_linux: "806b6a3f70ce30e4b0b5b23fd38dd6e44e3df8e649e59e139dec9255af2e91d2"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
