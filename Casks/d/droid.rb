cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.85.0"
  sha256 arm:   "eb18865fad71a4270205577b27c9ec670d52c977a16c4afbc0c318bdbd00fbf2",
         intel: "77b14ef44f4433997a63163b4b80c13ad8b39e40b7753cef5a83bf8319398161"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
