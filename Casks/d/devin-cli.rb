cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.5.26-0"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "d7951850cc6fea5463debb33b5e822a315951077b3d2772fc7470941d3131c0b",
           intel: "de95057614dabb9be47b5f61ae3d76138321c6ea4ad21d5f2060e140bad0e0fa"
  end

  on_linux do
    sha256 x86_64_linux: "007aa9b841873df2d529375c840e0808e84364c7f8a1f0fe3e73d184bb20732f"

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
