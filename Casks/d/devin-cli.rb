cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.5.26-2"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "d4c44501664a3c231f126d733c60c7068ab8cc0617b0819396b5f04e4647f5cd",
           intel: "0772ec9cb5f21314da8150bb5226ec413c64e6ee8a998ce0af62ed0097a64b2a"
  end

  on_linux do
    sha256 "e7ae3b808cfad038ff999e1b00b26c5a703259f5d03b7def1ba92acb6847a7ce"

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
