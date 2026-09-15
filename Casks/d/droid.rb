cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.219.0"
  sha256 arm:   "a1bf97c773c43bc0b09ffdea697b57b66deb372f65da93f77a23bf217d83ce16",
         intel: "fd457a2a56b57519024541a47d8e30f03558de64d0c0d720e355cca434fd399f"

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
