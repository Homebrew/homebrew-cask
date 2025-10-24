cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.2"
  sha256 arm:   "a8b18d3ae13501a709ec52ab093ca8a42429d67f22ded8779fc8b90d81c963cd",
         intel: "b1122cda7a07121acb5247b22e7d5f5e73e650ce19ad70432291d8240d557037"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "droid"

  # No zap stanza required
end
