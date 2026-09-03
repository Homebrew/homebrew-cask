cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.211.0"
  sha256 arm:   "485cbd9a012537fc6ba4b115ced56d33db1cd38d2caf2776cc987072e5c6be7b",
         intel: "a5488e2099bc28db72824f101ea81fd6aa8acf24febae79c520ac9ee8d804267"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
