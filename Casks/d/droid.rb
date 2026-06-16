cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.150.0"
  sha256 arm:   "c0c21d586feac310b4e5e47f8b2e5e240c6650100adf57d73a14cd1a41fe929f",
         intel: "a725c2c87a5079db4768019444614db710d107c99b2365375bc8ff39c622d207"

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
