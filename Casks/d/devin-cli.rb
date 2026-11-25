cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.14.30821"
  sha256 arm:          "46ef1a75d8bd851665179e136b7e39ad597d3d7913b95d67fd2b88e9c8af0061",
         intel:        "e0ffc5fb0bc367270f20f15686bba74a2851959e782a37c016c68b91229ec0db",
         x86_64_linux: "4dc43e3e4388bace60fe2aa8010cbb399402e724892d7175845b1cdef00e7ddb"

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
