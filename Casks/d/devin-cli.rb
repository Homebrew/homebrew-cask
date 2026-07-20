cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.1.27"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "3a7a4035d321f70b3d147c1fc1647adce49a0bf3f7301f9e015df727140d51a4",
           intel: "2cfe74dbf13bb64a90b28c15a93bc141fef5d3fd58437384175563926f2ec5c7"
  end

  on_linux do
    sha256 "cb4907a4a4f6c19beab91d04388a4537610c0bce01a4e38e28b5d6c04d27ca0a"

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
