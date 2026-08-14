cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.4.25"

  on_macos do
    sha256 arm:   "7b3ea98d2f50defde532c870009d77d4c72d711e97cd8c31fb8b4edb3a72792c",
           intel: "00b138492a0f844ec4e0c141ad33ae879153c00f27413d2d225a49b4d932f1f4"
  end
  on_linux do
    sha256 "02ae86c4c502d5f1676175663dbed36ef2c0750a4e094c51294845228eeac5da"

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
