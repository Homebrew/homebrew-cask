cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.10.31"
  sha256 arm:          "051dfcf29e0f5cb5f0a07c7579dc97255fee7f02ce4c6feacc7d4065ce76b5bd",
         intel:        "ca450a13a7e2d83a2c6e641c0f80842826f944cad3ca93ba892a7ade3948555a",
         x86_64_linux: "43218d80ee49576f4f84a1ffd4a4cec755c545b5ca98c5b26efce5340824f331"

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
