cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.49.0"
  sha256 arm:          "cd2a883bb0c56a6922b45f57dbe995054c3671f61a0d2ac451a5a9e5a98f89bb",
         intel:        "2e6c8022be07f1ae8fa13ac5ac2a750113a6115df9db4072012aa1fa9dbd4eab",
         arm64_linux:  "5624d087b4a02c276ab3179e3e534a2806a936fdeef5c9b846f17dde8646efd8",
         x86_64_linux: "a595fac2fd59339ee5661ca9c4ffaa62471f657f7488cffe7a1e269fb4e5be79"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "codex-#{arch}-#{os}", target: "codex"

  zap trash: "~/.codex"
end
