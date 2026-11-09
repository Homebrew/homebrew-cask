cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "f543d251b877c65c3e4f5f153f0eb5c2930719095b1b052fbd43f4a3e4f199e6",
         intel: "13d1644bf3cdb38cb058b5e0e3e93cf50db9ee704ae0c4c2f4e9f9dff72a63e5"

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
