cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.72.0"
  sha256 arm:   "3d6e5e29a5c329a3e2755e0d4228723ad5f1349acbb20865bf0a9e6a46a80d5e",
         intel: "0f5ae2275e7f2015623f6f22ae0fb44274b0ede33bfa401ff2935f4ee8a287f2"

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
