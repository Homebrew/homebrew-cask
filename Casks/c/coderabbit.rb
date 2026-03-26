cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.3.11"
  sha256 arm:   "1c23eda82e4283a64e35b9826372951a486bd8b81973d327f7310eb6ba112c01",
         intel: "e63917e7f509ef25a6514b86173ae4a62f30191de9acd9af79dcb0f650aba445"

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
