cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.368"
  sha256 arm:          "23cce2cba0ad47dd047ac322b22a00c6c0a0507c00736a00c10a4d1c44c865e3",
         intel:        "b9c09de472853fd97d980aa0edb75e32b69349faa90a61e5a1e5d95bb3bac0f7",
         arm64_linux:  "cc058990a833be4500155164ce291205b425b4b40568972394c3cb301ca6835b",
         x86_64_linux: "fcae3c4aafdc853446b834bdf66ccdb191f2a2133cbb4a17c9ee3b03a6c2d164"

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
