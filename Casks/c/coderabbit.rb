cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.7.7"
  sha256 arm:          "44d6fea649e201ff3d69fb3b4f36c2b556da6f7165fdfe25b2c058f938616e79",
         intel:        "548e4d781ee1d63efe6332f0b1db096d96d8fb4bd4ecd1ece0516e29d7183397",
         arm64_linux:  "57868934e545a1c154f33a4d24e233d919cf11dd6e6588aa3716cefa64ffe67c",
         x86_64_linux: "5b0b3173a7267a7c1624cab0171324fb54d0e232ce00ea2e3a976cdf6e8236d8"

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
