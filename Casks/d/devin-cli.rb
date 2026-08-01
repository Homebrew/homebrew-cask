cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.3.27"

  on_macos do
    sha256 arm:   "ec047ea396d53fc370c1c7c6de211637585cf99a5c5cd5dcdbf7e4c7f2a20626",
           intel: "2d67b0c3aeee4fa98d022ce13925573d6c18f2666927fef79672c1abc1aff729"
  end
  on_linux do
    sha256 "cad56a13aba260567b67e59a926d234564dc1a61b9dfa854d686fa2e3c3b948b"

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
