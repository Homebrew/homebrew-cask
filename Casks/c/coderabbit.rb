cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "c7143f022e46f0ebd0007010762d21dd152f47bbb598473586881e20733a3030",
         intel: "3ad4d183c157059236b1ce6756bd9ae0e1e6afa4be1a1fec4cfaa05dd9dddd87"

  url "https://cli.coderabbit.ai/releases/#{version}/coderabbit-darwin-#{arch}.zip"
  name "CodeRabbit"
  desc "AI code review CLI"
  homepage "https://www.coderabbit.ai/cli"

  livecheck do
    url "https://cli.coderabbit.ai/releases/latest/VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  binary "coderabbit"

  zap trash: "~/.coderabbit"
end
