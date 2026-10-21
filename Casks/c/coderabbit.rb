cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.9.1"
  sha256 arm:          "7cfb566a0f34b5eb2d66e0b44d2e75c4085c7eb918f5dc7e7331ec46021def09",
         intel:        "307b7aa799084ae194ff24cead4a6913cf17703f7c8623c16c2d1a261c1696e1",
         arm64_linux:  "34424c4d46a85ba899edb97daed65093c70f7039977f46e5437841121fa83220",
         x86_64_linux: "9558e02f1b6570ade33d8191b33e10ffae2472ab2680d4518d03261bcebc80bc"

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
