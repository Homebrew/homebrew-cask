cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.2.17"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "60e2edd321f5cd5e1cfdf3d6d5e12064f25326ca8e36a8ad71f43d000745dff8",
           intel: "8d4d9d627b9344898442e14fff87003b376dd9a1abf524372206f1727b21cd28"
  end

  on_linux do
    sha256 "f0e1e9363afc6ee68c4ef87bab4aeb7ff5cc08a5fa838350ef3ceefdbb2a2be2"

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
