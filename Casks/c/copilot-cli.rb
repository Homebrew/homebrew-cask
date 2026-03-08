cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.2"
  sha256 arm:          "064d202dc8e551fe1101d8888f33a936be584981e71526c06519952ede1947cc",
         intel:        "f01605285c7685d07139d7bfba6eae67c5400a81c3df92f6ff75b6962d11d925",
         arm64_linux:  "a0325b2f2646d5b7e461ad09a366415a858476d6f3d1590c613ff63957aa5465",
         x86_64_linux: "521f87d04f073356c65ad973db7124b32ff3a23fd3257f0cd3fcf4c5d4649047"

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
