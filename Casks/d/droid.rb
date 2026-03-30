cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.90.0"
  sha256 arm:   "f883a6130f68cbbe8ed20fc415d866871862ad590e809b4439d974b772d1d3a0",
         intel: "dfeada8681eac5c2318a04fb8b6414fd926a442c9894c9fbadc8db885b7cf33b"

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
