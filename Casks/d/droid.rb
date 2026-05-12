cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.123.1"
  sha256 arm:   "6339f10d5afcd4db8e77f92d3d468e6d31d296953779d57139a3ebddbb99b81b",
         intel: "d2b6bc9444397b604eee3fa3c2f126b6a8ea927e262dee58ac5dd20c083d1a27"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
