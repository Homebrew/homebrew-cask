cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.20"
  sha256 arm:          "de658dafc2b1bedc5221706e3852eab932e2191939278341ce562ad0ff917fa1",
         intel:        "a2ad555d8ec1d4fa7f1b7074bbc0fb6002bfc96b337e7be71a808d9a30ff90a4",
         arm64_linux:  "7ac1761318586c35da7c5894f3cfd304e73774f62b2967685fba70de35f8e2e0",
         x86_64_linux: "c2a12bccb97e994f99b0450a5fa867ab633b367cea783b7061ac349b4c00bd9b"

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
