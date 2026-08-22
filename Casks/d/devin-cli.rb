cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.5.20"

  on_macos do
    sha256 arm:   "a4e03ca7ca6f5e1b9627733d2c49eadb87b6ea9cd9eba8d6496974fa019109fb",
           intel: "9498994ad330f4ee90d9b07c534e63f3e56de6e00197357b49db267610b9154b"
  end
  on_linux do
    sha256 "4182715a083065a0e5627179e22d29c317b93f9a230d8c70943005c55af589f0"

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
