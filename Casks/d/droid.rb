cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "11790b88e3e47813e83089ed43a80ffe782982b62ecad2fd1bc6de2ec475a285",
         intel: "a7f84e9ad004c3de1bc324d87e76eea178105f2993196950fa248f2a290ff561"

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
