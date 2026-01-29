cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.56.4"
  sha256 arm:   "f501e85c163927ddb7e401f459744270fd66069cab09d6c2ad5638129bb42968",
         intel: "c8138d06e105404680fece7b629039e5c39879f7384a7d59e323a02516aaf659"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
