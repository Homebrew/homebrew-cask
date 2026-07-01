cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.67"
  sha256 arm:          "9cd1bca37e379697cedfd99ace8dfd4d8ab7119a0f834efa0f48ea8729c1e301",
         intel:        "11ad0d7335da1fa89325d332608191b9e13767b5f434ad1b7458eaac3580662d",
         arm64_linux:  "f8d9d6c7b54bfd5a98200e67a3439ef3278061f8131520497107626a763c3f63",
         x86_64_linux: "c6d251de20d14415ebd6af00bfb6a8e3854094b49fa49fb7f3df2bfa64f6db3b"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"

  binary "copilot"

  generate_completions_from_executable "copilot", "completion"

  zap trash: "~/.copilot"
end
