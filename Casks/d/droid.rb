cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.235.0"
  sha256 arm:   "123162e11607d080ed223a58767a9aa757fc5611e272af600705468284839629",
         intel: "5139a15603e8c0e7c89f021744e960b7ddad4cd00159a871350f8ba115e97066"

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
