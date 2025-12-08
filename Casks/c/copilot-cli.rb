cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.368-1"
  sha256 arm:          "1ed2eb7b56471c8fb5770b367510e529068e3a6e13efbe8788869bcc0244611a",
         intel:        "57ab3e1178d8722eeee4b98db704628b729b1b8d7ac2d383f53ee4baf2cc710c",
         arm64_linux:  "c2a8058cfb9ec8f6d6c83ff702729f32423f904e0027691db9d37587844cfd44",
         x86_64_linux: "87158e6ae8902d4ed6139f7635751900929b7d3aa6d153ac5aadd1aa6c2bbba7"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
