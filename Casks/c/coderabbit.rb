cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.3.5"
  sha256 arm:   "c343cb19a2afb0e6251cc5895b8f1f2547a411749675c1026a66d68eef0b7481",
         intel: "f808107a9b6869cdc28380374ac9ae8b6001a9e748b9b62e07b951a7f077599f"

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
