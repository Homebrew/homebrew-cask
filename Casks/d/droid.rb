cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.92.0"
  sha256 arm:   "0bc3f8c5fe61858f731fc6b1dd5da4715ef615e43c48442afb7bbb18863886c2",
         intel: "702638ec3f98f38f00625969453a4a7a8a9e7b46d3469b297e4db360d9e206e7"

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
