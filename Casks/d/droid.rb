cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.241.1"
  sha256 arm:   "f8bc0191309f005b9f78f5d479affe8fd5d205558e653d015e8be44fb5f644f8",
         intel: "5a68ec3462599b99822f5c2b96d0cfd83584acd5353f7571759f9ebe6d70300c"

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
