cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.8.1"
  sha256 arm:          "c5e22f56c9ab5568367da8bfb633e59c9553f348ad6fcc4cb034edffe0a42d7c",
         intel:        "911ca4615ebed98109fd4724d16dae6d7a42bfdc1d94ec99632a129d0e3f8ca4",
         arm64_linux:  "9b42bec99ba4ef842635ecf1d636f2ec285c01103bf0f7a918e5dbf891efb268",
         x86_64_linux: "39844e339770a780e0606ec53986cb2694398a0a0ea5af420e0b513816326f40"

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
