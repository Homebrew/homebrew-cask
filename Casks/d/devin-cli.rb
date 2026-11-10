cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.12.43"
  sha256 arm:          "87b2f032672e20fd6076e85d563901713b2c26c5192c011141c31cfcdbb2419e",
         intel:        "da8c3c8f08c1828caa0d1084b19fdfc2e4a4bc68b87c9080b682f7aa316e8518",
         x86_64_linux: "6a19997b5fc2d6ba1a8c341d4e2b12f1b78cad5d415ee9c0ca413a8d52a99562"

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
