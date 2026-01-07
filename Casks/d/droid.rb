cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.43.0"
  sha256 arm:   "7d685ae6d0417d0ac33361e541dcdff2772860b7526507e4946556248fda412b",
         intel: "e4ef4adb28df4a5321bd8b6b543cd8ba668548ce040b5aca4b54583c13770e1f"

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

  # No zap stanza required
end
