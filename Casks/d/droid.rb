cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.74.0"
  sha256 arm:   "fa34088f998068eee923b4b794176d1b210e44f9a0fbb5407f00050a57c910a4",
         intel: "626c6259d8bba120802fa0b0dac4aabb4d323bdf849fd9f254483e20ed863318"

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
