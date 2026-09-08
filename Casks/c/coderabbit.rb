cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.7.6"
  sha256 arm:          "f970e608e383114e1edf214eea71a99d6604ea1dd09c01e754ee6b8d4b852cb1",
         intel:        "1c6242dec8a0983ff70842bc1d0e8c888d1a92b1ad80afb969c00c94c482a704",
         arm64_linux:  "2270641a6314bef0da32e5903ddc6de6265354962f7cf651fc581a4a91f22447",
         x86_64_linux: "853a1727609ab0ff1f56863fa6de7acf3de593a6dc1bd7f91a32f11c5724ffc9"

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
