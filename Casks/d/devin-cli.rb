cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.5.26-8"
  sha256 arm:          "ffcbdddba574cf5ab2b7c10e27667f25d58d1a36fe88df98920689411a011d49",
         intel:        "b85e8e45b5b00b4860214445a1715087fe683ef7d2e1c81105a0ae8b84b41341",
         arm64_linux:  "d61a1377a251e379d1fa178ba94ee280ff9d79b2356e159c2251ba046c9a8f72",
         x86_64_linux: "4ea480041c6282261369f8b4bf11589ecb0b8c76e25d868dc48f29ae4929f021"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Fast and minimal agent that lives both in your terminal and in the cloud"
  homepage "https://docs.devin.ai/cli"

  livecheck do
    url "https://static.devin.ai/cli/current/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "bin/devin"
  manpage "share/man/man1/devin.1"

  zap trash: [
    "~/.cache/devin/cli",
    "~/.config/devin/cli",
    "~/.local/share/devin/cli",
  ]
end
