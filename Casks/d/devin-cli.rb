cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.4.16"

  on_macos do
    sha256 arm:   "7d54aa60d43b82d64d8e5fa437bc244eb45c62c190a6d1548e8b76940f06f8e1",
           intel: "6d08b410c072b3085ce9e0eb5617c97a7a7646f79dd04d4d1f630bf81f0540fe"
  end
  on_linux do
    sha256 "c8593813645677e1aec93bf70f339af27b52e0d02dc2d88c489256fa24b90f7d"

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
