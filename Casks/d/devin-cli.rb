cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.6.14"

  on_macos do
    sha256 arm:   "6005bc2c1944f0143456577d73a6a4cc80d5717dcf2606dcd361a8958c472126",
           intel: "93a704fa1f9a105fba3887732c7fb4137f7d9b4acb995dc9f73660ff987e244d"
  end
  on_linux do
    sha256 "28cf64c1df9f58ccd063fb7e6fd6e9391073c585b733449371485e1ef8a3e6db"

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
