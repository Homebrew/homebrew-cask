cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.172.0"
  sha256 arm:          "0970016d48209a09c4039139629ed79b4a31c5e3d864e792c043419d98fa6466",
         intel:        "b5e94828f45171f13d81de2b96cae05c0b7e6a7f2f7d3c9d4e748be3d3906c02",
         arm64_linux:  "faf17b8071927f33346a805dc8cb45de4e08c0d75cf0e5e68cecddca28b8861e",
         x86_64_linux: "63e3b00065ed7f62166d0522e17f663cb866a31d80d03e63365482ed34a1d991"

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
