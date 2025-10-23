cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.1"
  sha256 arm:   "454a607bfcc9e9541b31267d6358b477ae1f7a880df3815327ebbc56a665e913",
         intel: "2b7fcaaae16c921d1a65d5a933464def9702490adbcdfd8f2921b2354b66777f"

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
