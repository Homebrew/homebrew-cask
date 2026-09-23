cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.11.3"
  sha256 arm:          "c08cc3f3507d103246b8c601a584fcc719fd77f6cc10f26cc90e9f4186640df2",
         intel:        "594f89b6b0d03dffec4eabc754104e4471cc43a014a2164e2fdd7d0d752d0100",
         x86_64_linux: "83b3b113c01bf2a3e9e100db08d77e6b086806a7754f091e20831bdfe215157e"

  on_linux do
    depends_on arch: :x86_64
  end

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  livecheck do
    url "https://static.devin.ai/cli/current/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "bin/devin"

  zap trash: "~/.devin"
end
