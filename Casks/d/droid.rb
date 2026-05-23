cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.132.0"
  sha256 arm:   "0069c01c2caa7bef5aa3aaaea84678aff5123202cf07ae4e481bb3d111b2b32d",
         intel: "5856a09aded4710a7bbacd31405b44ec6bc2b3e1a6a7644422623aeaf0cca22a"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
