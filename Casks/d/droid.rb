cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.242.0"
  sha256 arm:   "fc9ec41e35cea2d4a9324a08ae7b6c8ae776366bc9565c164c85e7e751f91212",
         intel: "b2e49850b8e36688015f136a47f78fcca25847972f9b480b1acc808a74c42e7a"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
