cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.215.0"
  sha256 arm:   "82e1ba2a2ae6f4869afa3c9a434c971882e76956b2bfefd9b534da316227a477",
         intel: "a2b0d957194ba710ea4d1270e6c83c0921ee1667216878292448f91651ad0647"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
