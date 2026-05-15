cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.126.0"
  sha256 arm:   "67c658013727a6f4daec6a4d751c008287774444a94dad9325541c3b3f88807c",
         intel: "e0bb5561e55b59367dbe3e97523cd78c4cb889cfc0b214da7497c11fcbe9d3e6"

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
