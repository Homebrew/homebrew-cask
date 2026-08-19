cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.7.5"
  sha256 arm:   "5add1edd7269ceda01303bfd6cd9ce6b1fa204d7dd9c89bed412c36680caf020",
         intel: "493c9908405eaccede9f373ee835e7fa68f1171caa5a784ce52c07585e37223f"

  url "https://cli.coderabbit.ai/releases/#{version}/coderabbit-darwin-#{arch}.zip"
  name "CodeRabbit"
  desc "AI code review CLI"
  homepage "https://www.coderabbit.ai/cli"

  livecheck do
    url "https://cli.coderabbit.ai/releases/latest/VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  binary "coderabbit"

  zap trash: "~/.coderabbit"
end
