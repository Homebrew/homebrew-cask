cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.112.0"
  sha256 arm:          "19eee3edc7442492637844634acdbf44012d984cec3039a844594aa4aad04738",
         intel:        "256f5d0f5838a7baa32c2f842b50f2d3e178b43c2ba5c858b68f2ed036bb8d70",
         arm64_linux:  "75ca510e459f2c85b331b73910aa96d57201c556361f1a4d978b835ad3098798",
         x86_64_linux: "f2b88f84a80e7c5b7dd24e5308ff37d082f4af23111f48a0688caf74222ec314"

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

  zap rmdir: "~/.codex"
end
