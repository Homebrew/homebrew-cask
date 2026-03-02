cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.65.1"
  sha256 arm:   "f701ee89bc59a15f6b380acf8b556bc145d1181953b1a24169bd872a4fd7f223",
         intel: "2e90ad6bee841a990a42dd5f89ae138f54a999727c6bcb60f3fbfaad0e76aeae"

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
