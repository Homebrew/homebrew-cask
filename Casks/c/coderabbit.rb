cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "f2d1da667bab05bf07ab14638f8b8f2cbbf2d2b978a13ca856abdb0cddd33c62",
         intel: "e3975dddd3254c7e5dead0ca92aaadcfca1fd79b4fbe97fef4143baf02df62ff"

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
