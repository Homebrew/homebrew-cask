cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.164.1"
  sha256 arm:   "a3e4f19e8b5237a26e7e3dd6fc2a41611253bd0579973d4a60371c2ef1919463",
         intel: "ddf11c43e7031f4561c269f497d392bc5af9da0013c91083b019516d481eab81"

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
