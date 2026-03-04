cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.66.0"
  sha256 arm:   "da18537501f646727f6a23ff41e0c3e7dca70b90bfc9a1fe7542abdccc930a09",
         intel: "c35761dd9b4984a980fdaa264c184d0b9128dc13d67a2d344da51716c383d907"

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
