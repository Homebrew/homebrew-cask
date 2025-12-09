cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.367"
  sha256 arm:          "7f40e54c24b96b7e43a82c9b37c01613f643a345b5a137a9e7e05863236a298a",
         intel:        "7d80f323aa5d247c9a3348f43961d0a849cccf89b3c9a21145f4b8597bf55c28",
         arm64_linux:  "a9d2642990ab8fc63653b12538e66e03964f46c0de86f390f242a4140b1cf941",
         x86_64_linux: "5cde2b3a9aea6811ce1e3faf2ce92c0868fd3d6df2e8f94cb7ad54c5a331aaf8"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
