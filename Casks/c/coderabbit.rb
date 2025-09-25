cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "0c6c934b317f3e7fc4911bd9f41279caf66d44bfaad49528589cf3a4017dbba3",
         intel: "69b5a214ae65bb6b6b34dcf5090c609db5c98bb9aa6e04d53cb6f1332e52ae2b"

  url "https://cli.coderabbit.ai/releases/#{version}/coderabbit-darwin-#{arch}.zip"
  name "CodeRabbit"
  desc "AI code review CLI"
  homepage "https://www.coderabbit.ai/cli"

  livecheck do
    url "https://cli.coderabbit.ai/releases/latest/VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "coderabbit"

  zap trash: "~/.coderabbit"
end
