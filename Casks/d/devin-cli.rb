cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.5.26-4"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "80e80ff46d255e65d9403c31312fbe1103bfac7e3b4338b061e2234eb2cad6dc",
           intel: "ab989c6f1b8309430c0f907457b3a0d10a8354d42c236bf1502f01cb1d0bd239"
  end

  on_linux do
    sha256 "b0c369b93c1a217ab5edcab602a6eef762ad1ddfa6bf8c530b4aea77b01917b0"

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
