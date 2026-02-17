cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.411"
  sha256 arm:          "41908b1c972c3b3ec81b559decd9bcc42c7a5248449f5bf7c2ac714abbcab29b",
         intel:        "efb35dfc74de299c74411ecb372d61f820441f05f1c94becfa2760ed4e906c94",
         arm64_linux:  "6836610c16a75744dc3e3e58aad2aa826fbf22cdb29ef745b6aee73ea574400e",
         x86_64_linux: "fef8289d5ba6a0a57dfc6f22b8bcf8008babc860228a502a305ac4d0bddca0ee"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
