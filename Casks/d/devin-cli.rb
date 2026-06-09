cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.5.26-8"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "ffcbdddba574cf5ab2b7c10e27667f25d58d1a36fe88df98920689411a011d49",
           intel: "b85e8e45b5b00b4860214445a1715087fe683ef7d2e1c81105a0ae8b84b41341"
  end

  on_linux do
    sha256 "4ea480041c6282261369f8b4bf11589ecb0b8c76e25d868dc48f29ae4929f021"

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
