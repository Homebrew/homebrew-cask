cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.18.1"
  sha256 arm:   "568d5a9fb8f900ee87a5431a9e9bc4d24865db6abdc5b2adb8ea20e94b294944",
         intel: "5ec56132fe75b203c5fd9ccaf147a7a5ff9a6d0948cd2add366b611641e3d650"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "droid"

  # No zap stanza required
end
