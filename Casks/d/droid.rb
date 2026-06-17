cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.150.1"
  sha256 arm:   "321bfa3e164ddaef383198d2e841ed776f0f93b5797f94f55a16ca98c21691c2",
         intel: "0c04a42f1e4a225293273ec7f7a2490a38dc68c4fff637b6a61693a092c59ca3"

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
