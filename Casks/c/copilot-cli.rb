cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.4"
  sha256 arm:          "4d8869353a75e0e890a1ae84a7cc2936c3016147903744d664f9177190635a8f",
         intel:        "11ae3ee666f70feb8e31e776922b5483a355aca80bf2445001c03871d63cd0c1",
         arm64_linux:  "b2cc3c86a70f5a436c1d3ad8824199ac4f1fb79354eabba438489d63ad0539f9",
         x86_64_linux: "c5990f9b02ae6a40c1f3cee1702741645deec10221ae5f5aa3813a10e8382670"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
