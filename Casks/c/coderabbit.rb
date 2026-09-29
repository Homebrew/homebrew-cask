cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.8.2"
  sha256 arm:          "6091d03164b47190b4dbb20de97312f79bde03fc35b4b7c2705f8f4d3ba8067e",
         intel:        "c00982108b0f816df0cb96c427c1b99d59161cd9150c57749dd1f20b418d1d08",
         arm64_linux:  "3b08717d40d51fd2d884a4ef0d97f3e01726cca7163653b38405313ad398dc8f",
         x86_64_linux: "a6344485153c5889c91bae71d9172c0d2d7d3924a45661173030e28570bb7bb2"

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
