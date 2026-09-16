cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.7.8"
  sha256 arm:          "a1d678dd3ed36647a6dc82d9142672b4a5e899436f97444ed7fd95dc9868bd9a",
         intel:        "d6407746203432eb69405a2c1606372e74f4d51c0f175267611fc7db196b7c8f",
         arm64_linux:  "44e4d845495fd53ffbc3863817abaf5c077027ead89960eda84eca383a19a786",
         x86_64_linux: "52ab6081549911b0b16223be416e1ea5d96ca8a606d2b5c3e6f19444393c4b20"

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
