cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "99f4807edf70f9c06cc90923f50746585b921b98c0236f8311394680003dcf33",
         intel: "0b97a47826e0bb4dd508578b91e9ac8128e59bdf7acf1f431727ca5ec77fe6bc"

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

  # No zap stanza required
end
