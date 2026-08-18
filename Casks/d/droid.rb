cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.198.0"
  sha256 arm:   "ea4db586b892e2017d73ccf208e34bce9b6908247824db1bff6f564f9f10748a",
         intel: "ec6a9317aa5b153f509a30c3e87d72fc752955467fdb3ff814465532e01ee376"

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
