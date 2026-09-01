cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.7.5"
  sha256 arm:          "5add1edd7269ceda01303bfd6cd9ce6b1fa204d7dd9c89bed412c36680caf020",
         intel:        "493c9908405eaccede9f373ee835e7fa68f1171caa5a784ce52c07585e37223f",
         arm64_linux:  "596f957f67b7ba07925127c52530e291631177d8dcba0f3a66deb55a9a5b06e9",
         x86_64_linux: "0b47cb4de75188c0184f290d8d6818a793a9528e8f79cf660c6a65f225b045c1"

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
