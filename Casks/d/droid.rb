cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.187.0"
  sha256 arm:   "8adc663831c41dd0811fd6d0081972f7a42da501ab45c85dd65dff27181aaedc",
         intel: "832ee4f62d5d45741549514790c290969618886f83d5765577b2f71975011734"

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
