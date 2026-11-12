cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.2.7"
  sha256 arm:          "447d3093ff09b91fc005e372f5b53c9c9076e30709c67da332a706922c0aa614",
         intel:        "cd3a77bc9e91e4f102532ab0648dab88f57892b96597599002bdaa18825b34e5",
         arm64_linux:  "4efdb8d654b66a07ae6cdcd89d5165f625ad2b800c6f3700cb90d845818142e3",
         x86_64_linux: "84ef7e60d88ca7494d01bff735734fdfc8ade657c7857604a8a8d46cad584694"

  url "https://atomgit.com/atomgit_atomcode/atomcode/releases/download/v#{version}/atomcode-v#{version}-#{os}-#{arch}.tar.gz"
  name "AtomCode"
  desc "Open-source terminal AI coding agent"
  homepage "https://atomgit.com/atomgit_atomcode/atomcode"

  livecheck do
    url "https://atomgit.com/atomgit_atomcode/atomcode.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  binary "atomcode"

  zap rmdir: "~/.atomcode"
end
