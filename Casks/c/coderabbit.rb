cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "a1a142d56e3ca6cfe88d4955f2074713885d379360bf22e9836024b203244087",
         intel: "220d8c508af9357a2b18e159c2aa8930de6aace783f7a0b2f2e0fbb546a9173f"

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
