cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.6.7"

  on_macos do
    sha256 arm:   "fdd06812077d5cfee564ced7a256d0b9e243ee467d5521942662971444c5da54",
           intel: "4ff6419c70ecb2cb2a4bccdc9fff68592a75a1cfcb849219ddc8b3ae49a4cd4b"
  end
  on_linux do
    sha256 "f88edacea692553910d72f275515bd0b52b5d271d55250981b0c41011142d27b"

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
