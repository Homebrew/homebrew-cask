cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.15.14"
  sha256 arm:          "23911fdf9b5c45ebefa382e57ff1996e762c2b30a2fe1f4b536fa633e2fcbd1f",
         intel:        "5f9197bac49d90c1c213a9405326588503d7813942f347cdcc4a21bdab6b5189",
         x86_64_linux: "d219f885ed601d1424ae2ecdf5b37441cf60f15a38a4961d2a6f0b41ec913f28"

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
