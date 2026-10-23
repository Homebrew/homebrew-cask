cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.11.205"
  sha256 arm:          "d80c39678dc3ac6b62c25c1864ba6881086b4eeaadf9a3e3a4e86a30b41423df",
         intel:        "7079733209e3aeb46ff1fd11a41f4eb7f49de6c7f597775f3a03cf33b159e992",
         x86_64_linux: "2e65c8b93682258fc91f5e4cead92e3698338cebf1b31dbc32a3201cb63705c4"

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
