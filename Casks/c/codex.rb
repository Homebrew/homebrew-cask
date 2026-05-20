cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.132.0"
  sha256 arm:          "73258e01c122941c21bb8afbb81daff2ffdd8d3e803754fd411340c24257fdce",
         intel:        "58acad9af4f3b6dbabf6a1255baeac2384310b208d8b14a8899772cc72f99ea1",
         arm64_linux:  "ae80a8ffb41abfca4eba9746cd3ba90403d57b02bdbcd68455f560890ad9f440",
         x86_64_linux: "8b64432ee4ef5b1d7d197aad4535a276bc85223f4e4163769c0e1015cda883b2"

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

  generate_completions_from_executable "codex-#{arch}-#{os}", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
