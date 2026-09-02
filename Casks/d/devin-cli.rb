cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.6.12"

  on_macos do
    sha256 arm:   "b12d29bb11be2a981bb9aa31e6dbd2cf9c175727f729d464c5dd3d4ae1df57b5",
           intel: "c18c6b347de719796272ce292ee2eefaeb9da7d66f503d13efb76d01d84f5eb9"
  end
  on_linux do
    sha256 "6548b0551d5aac9324a2a1fe265b20b0bf17c26eb6a1f5aa364ef1f13e36e41b"

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
