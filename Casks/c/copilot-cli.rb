cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.19"
  sha256 arm:          "d21beea4b8896f373cf4fc39bbc0d2f4c4bed4de0b123911de7c7a53e00defcc",
         intel:        "cec3d14a021ee61f8490a7aa08f659a50be65a0269217320f3a620bc82041f2e",
         arm64_linux:  "fe118ef79d6f83ca1613738d434dcf6b8c9e311a896a697943627761a30ecd12",
         x86_64_linux: "f199665f0f2522e4c315fe7d9e5eb983e620ec2bc97b2249d6918c680473f9b8"

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
