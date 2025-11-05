cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.10"
  sha256 arm:   "aac50c2ac35a94c71e661c15329a3dddb44080f32db11659a87d5fb875f74b56",
         intel: "22cada1e0e19207a804c7be98cebb5c711eef77e77b9bc711ce222ae31b4cd5f"

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
