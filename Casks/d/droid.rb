cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.152.0"
  sha256 arm:   "51f956922e5635239d49613ba50eb9137858cdb43b4bd1b9b7e47c0d4dddecdf",
         intel: "65320649fb0fbc631dfdc78f34276beae75def0838a17db2de46410abcf5df24"

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
