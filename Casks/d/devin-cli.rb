cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.5.26-7"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "ae6139329c70d527908d7174f6ff0bc4454f92bebddb74b3abcf78fcc14eadd2",
           intel: "df764c585b524380fed4a802ed870d1042b5a0dbe23e1c4d3ce0e82ba66c2593"
  end

  on_linux do
    sha256 "ba7c5bbf6382a76696d8458e095f691211c3e339e4dc7686d1396d8ca2591db3"

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
