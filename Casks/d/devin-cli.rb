cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.10.21"
  sha256 arm:          "c0b97f8197bf3ce895ff14aa19257c511154b49a0a195bba4962acb5e475c68e",
         intel:        "4725d6b0dbbf6f71d833b5489469dc8b5c4a4f929926f94d500952a4cb7bbad8",
         x86_64_linux: "7cac6f5739ba3a3e5542f3b7fa07ed902d6dfb96ca22e4c63ae84c03bb7db47c"

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
