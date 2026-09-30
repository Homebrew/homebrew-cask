cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.2.0"
  sha256 arm:          "891622ab08675459645b8628206c83f4419d33daae86ad6716b4f63f2e7a7045",
         intel:        "35bcd8c28e2ce76c5840d252206625c3a9b7bd1e2e989e82f2300c9d56e534f4",
         arm64_linux:  "9b4f4a8ba88e55d95ad945326c3f874995bc71ab97596640707694910186798e",
         x86_64_linux: "954f7eaab7d2c9208900352e34703e14d1a722d327f75d46ad714d20febb1a93"

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
