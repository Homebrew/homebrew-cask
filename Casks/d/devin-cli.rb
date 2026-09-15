cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.10.27"
  sha256 arm:          "d25e50086b3f84286b6ca1a69f890331436ef9b757c937fa18f716fbef384edd",
         intel:        "74bdc4cd0e99c52db6feb1aa947e235a50b957f398ae356b7f34ca372247e3e3",
         x86_64_linux: "f6516dc32b8c2d6739931e6727759bd33e731b25d3806c2f37b8fb395c205099"

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
