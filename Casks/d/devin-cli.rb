cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.3.22"

  on_macos do
    sha256 arm:   "eefe1f3c970c06d58b5ec2612ac5b36cd350635e0a2e59eb4d4f5baf43427662",
           intel: "e6d09f77097ebdbdc3f337113395cb13ce091c9932af22032ada2a4fd18530d2"
  end
  on_linux do
    sha256 "29fe62dc1f7837f1ec56107b3fd5979e2c3e2dc88c981e8d5c7cae4c5c972fb6"

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
