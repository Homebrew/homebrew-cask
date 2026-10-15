cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.242.1"
  sha256 arm:   "50fdd57c44105108f0fa7171c492e00de2292b98ff80ad5dd52081d20c80c69a",
         intel: "35ca39421ac5922d899892055d56cc530f0ecf22ba597dc19b8d8350df7a68c9"

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
