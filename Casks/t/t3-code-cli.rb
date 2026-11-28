cask "t3-code-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.1.13"
  sha256 arm:          "d83b2e1ef9557e12f340a7299646203cdcdd5ee0af3272e6922c26410cfef396",
         arm64_linux:  "c553c17db07030d032808989427db5022bf04027ebcec2218c69fb1a5fa1377f",
         x86_64_linux: "64e0f8446d3f618b157d4e5a0a6808ab3c8bf1a1b3e44eab3100e554be05e5d7"

  on_macos do
    depends_on arch: :arm64
  end

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/t3-#{version}-#{os}-#{arch}.tar.gz"
  name "T3 Code CLI"
  desc "Server and command-line interface for T3 Code"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "t3-#{version}-#{os}-#{arch}/t3"
  generate_completions_from_executable "t3-#{version}-#{os}-#{arch}/t3", "--completions"

  zap rmdir: "~/.t3"
end
