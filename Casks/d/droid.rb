cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.55.0"
  sha256 arm:   "3cec4fb34bff015b94438ee2a726e44144d3f07129e2f2f1936e869877e49cd1",
         intel: "dff24e1e44d31899f6cdfaec756f52d419af3509195c9c32a178ea995cc41e35"

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
