cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.7"
  sha256 arm:          "db27e1bd837c1154850839331b4cf009e593191585089811a0dc94fc92942984",
         intel:        "b0587c2bfce1d49526d5483dd3d148c66e8bc2be5515eef882f644b4749d319a",
         arm64_linux:  "86f8d503b8776875bcc51413304e4d53f3a47fe732dcf49a13c8701bc68fab3d",
         x86_64_linux: "91599906bdf94d2aaa18498669c5c46649572ea7d487bc7b6a25bc4f24d5940f"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz",
      verified: "ntn.dev/"
  name "Notion CLI"
  desc "Command-line interface for Notion"
  homepage "https://www.notion.com/product/dev"

  livecheck do
    url "https://ntn.dev/latest.txt"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "ntn-#{arch}-#{os}/ntn"

  zap trash: "~/.notion"
end
