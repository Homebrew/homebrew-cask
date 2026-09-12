cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.218.1"
  sha256 arm:   "076c78e42f94dd21767f5094002259efb256cc294cce63d6552b6607bc714589",
         intel: "577ec7a29f50fd90ac64a28b1c4903f9c9a08a33c2825cab86fe7db4fb5bc466"

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
