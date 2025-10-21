cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.21.5"
  sha256 arm:   "1df07255a42e8e43732f6d465f80c8ed1052daff5bc119c7dd5fcda3a0c3af85",
         intel: "1c3352cfea6e87201586378461acdf2541bbdeb2863a345193b5f5ed32240e90"

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
