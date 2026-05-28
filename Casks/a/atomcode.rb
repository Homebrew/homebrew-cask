cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.23.2"
  sha256 arm:          "d50e84a9f381868a34604b76c8047416ecfa5e61bf21f3169dde6eb0abc0c6ff",
         intel:        "409ef0bdbbfc92a2d788c70ca7d17bcd24902283b2b6e7c722f1211bdbd4dedb",
         arm64_linux:  "d8572832e126fbab48de41c5649f3761f6684d69a1a44b2f26f1e064a5071d57",
         x86_64_linux: "9c0ed439a25268f2e186f052de85295a6f0073727506358ec1b4fe0b055d8f40"

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
