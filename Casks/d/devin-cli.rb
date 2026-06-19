cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.7.23"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "e1e5fd1b1878b7c6f70018c802f79c25c208bd5209a1287b07df454ce9a09928",
           intel: "8a0381eda3a16b47bacb7be0fceac4cd6f01af333c6c3b2d9b04fbad33a81211"
  end

  on_linux do
    sha256 "fe3151375048c4e1cf67cfbe7efde509da0265ea6bfa713558237a2ea6f4879e"

    depends_on arch: :x86_64
  end

  livecheck do
    url "https://static.devin.ai/cli/current/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "bin/devin"

  zap trash: "~/.devin"
end
