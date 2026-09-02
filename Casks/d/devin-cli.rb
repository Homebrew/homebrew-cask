cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.6.11"

  on_macos do
    sha256 arm:   "fb0bbf9df157fd02e667f7763efe6cdf979228381a420107f56c3d007e7fd3e1",
           intel: "2d8bf521939bd873fad8f358413ad73654cc8dbc589daeab9a2be94b6fccfcd3"
  end
  on_linux do
    sha256 "acbcc012601b78de49299300a66f37776e4038bc224011f55f5c9ab8c7846802"

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
