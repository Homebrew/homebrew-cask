cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.162.0"
  sha256 arm:          "5809ee90a9c3b59d438bb2663aefa0b43d86f825438b65d4504b31f82343628b",
         intel:        "928b421103f339683d0d9f8a648f7b591ae4be907cbd8a5418dda319ff2bbd3c",
         arm64_linux:  "d47a5fa21e037a1b85729b88c238ff3da8a956fc9fb5ad3976714428e7fb2bda",
         x86_64_linux: "4f573944c1d2059109d75a2f4d0cc9c03697288224a5e407717a9de98fc010c5"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-package-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  binary "bin/codex"
  generate_completions_from_executable "bin/codex", "completion"

  zap rmdir: "~/.codex"
end
