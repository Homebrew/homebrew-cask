cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.9.5"
  sha256 arm:          "8b296bc4075fb2a5739b7e9a5f54cd2a542fa1bae1295de3058b83f8d2ffa738",
         intel:        "8d4f8b8aeea5551aa13e4e453d29d11368af6768708e1cc943c9eb8e0ea58a0e",
         arm64_linux:  "87fbfdd9647cf6b48c2cfe0730ac08fb6d33e370d65b2b1c5398b39ca458fc64",
         x86_64_linux: "53f5d822019e6f7316ffcc2604199d94c2a39ad5216030804e3f12f1e4711818"

  url "https://cli.coderabbit.ai/releases/#{version}/coderabbit-#{os}-#{arch}.zip"
  name "CodeRabbit"
  desc "AI code review CLI"
  homepage "https://www.coderabbit.ai/cli"

  livecheck do
    url "https://cli.coderabbit.ai/releases/latest/VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "coderabbit"

  zap trash: "~/.coderabbit"
end
