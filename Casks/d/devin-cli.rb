cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.11.1"
  sha256 arm:          "3daf41d49639099e5a69e9ae09538cb07162eb7e42c91cb07a9d63ebcbdffe59",
         intel:        "eafa7ad42e5fc872fbdb7a549a7aef630544f12c20e8004f081bd4fa436ed412",
         x86_64_linux: "4387fec13bf1c42b2dd9d677b16b3ef8dc4709fa6ec24b377eef6c1232fa8adb"

  on_linux do
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
