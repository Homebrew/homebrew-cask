cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.229.0"
  sha256 arm:   "37f3a7e0e65807596d71cc77c77857eddb28ef5f26eb1c3af92cf0d95ab6b4a8",
         intel: "19f78c3466d3d06fedd8c32b734b0367a174f61f6c3232bc6863d1fe7475be76"

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
