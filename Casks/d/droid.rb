cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.230.0"
  sha256 arm:   "004fb48e53281464af9f4d51701b481f0a19aeb4ee876da9f768b70020a410dd",
         intel: "95cd6a361cdce14f63fb71007df141bbe7645b007e7156e0930b2c5b8bdf229e"

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
