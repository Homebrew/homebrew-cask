cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "a4399e5dd87b092c9e28bb423856c5016e82a5fa34555de632012c448d9c601f",
         intel: "9936d5eac828ddf240589a79caaa8265780500f9db72402c8e3a49b22f1f48cc"

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
