cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.153.1"
  sha256 arm:   "255ad87f361c01980edd1155537088bf1c63435e7a845f7a272d4f093672b737",
         intel: "b2eabcd0e32342bc5f9c45fa39b8d1d830975d716fcf2c4e4dd09e7180cfcbf4"

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
