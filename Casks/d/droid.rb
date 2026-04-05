cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.94.2"
  sha256 arm:   "dd05cc35bc74f4aa5ea60eccf0e4052e9d35f9076e582a31496bd41f2756951a",
         intel: "c815b9687c14d7064a180259aa5eba636945dd089477edd89e0b5ac67f3582ba"

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
