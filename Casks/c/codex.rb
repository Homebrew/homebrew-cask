cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.157.0"
  sha256 arm:          "97809f91cb355e55480cd7a126f9ad24bb7b162222515e30286bcac6fba94acd",
         intel:        "51cc89d32145c1e5dd4aa9670b88facbeb967ba1470470680ae85376f3e340a0",
         arm64_linux:  "c1c36beab0b4f72779adf53ba9e9e494bf7cbfbe4f3506a08ff67a24f5f00d08",
         x86_64_linux: "042f851ea3fc1083c45157520520944fc790632b53ebc580fc98eaca55862a25"

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
