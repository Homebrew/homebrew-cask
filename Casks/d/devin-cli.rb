cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.6.2"

  on_macos do
    sha256 arm:   "9716ea0420ea120ea2c889f07b4216eef20d5ea9b675be4580aefd82cb46f1f4",
           intel: "8ee963f0324f6a51dad01a503832219c8956a133f4923773082a2c4382126355"
  end
  on_linux do
    sha256 "ea9e704a1e035c28df5a4c1fb113ad8ce4757d3c3d5a8471d423d4bcf4816788"

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
