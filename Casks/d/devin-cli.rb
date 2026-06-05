cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.5.26-5"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "b19cccc582f50fc9bd8ea07a1ec0e34181650e4497b5196fe36504e3fd305088",
           intel: "5b9702091246e9ce2cd8683d52d1708d7c183271c9729f16e025045482e8264f"
  end

  on_linux do
    sha256 "7a18e44f67cc77392b07124d127a6df82ac20ef9fcddae11d03b69acd7f5d3bb"

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
