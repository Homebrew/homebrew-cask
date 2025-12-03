cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.366-9"
  sha256 arm:          "a7f1179428d8af26270c3827c7aa0cf2065b66646a3fb80c2648d4df8057d976",
         intel:        "4b0f081bc34e0b248a3507414de844a30022f1df0095ab49104b094ac85ea83a",
         arm64_linux:  "a53d3d967c263ed71ccbbf5d257b7d042a5354dca960e2f6116ea3c6299520ec",
         x86_64_linux: "3204f3380d075d0765b55609e38c66153cb6fc4deac397ae822a4e3cf96b0cc6"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
