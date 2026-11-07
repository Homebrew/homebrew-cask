cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.12.28"
  sha256 arm:          "8833a0537d9d05b7d754f4c195b20472b8680d97d6fab4cba7e349173a5f5b91",
         intel:        "45813a4a48363495d1cdeb8b4df9f960441ce0e912dd878a51d7ee5c38025884",
         x86_64_linux: "8bc952667502ac1175997364500b0d24c15fe35c8ebfd915dc1712d4211166d6"

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
