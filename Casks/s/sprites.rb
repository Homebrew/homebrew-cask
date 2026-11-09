cask "sprites" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "2026-11-03"
  sha256 arm:          "711d6af3948077a1c3e47658a74c1d8e7e7d31fbc628345e90ca32ab4e9ab960",
         arm64_linux:  "c82c83bfed28e4b67c2c6bf63b0aecb9addc4c568eccb6aef399f21bfcc6d486",
         x86_64_linux: "731af477ecf7328fd188c67b3649874c9107b6f0097c25888d0dd17aad823527"

  on_macos do
    depends_on arch: :arm64
  end

  url "https://sprites.dev/dl/client/#{version}/sprite-#{os}-#{arch}"
  name "Sprites CLI"
  desc "Command-line interface for Fly.io Sprites"
  homepage "https://sprites.dev/"

  livecheck do
    url "https://sprites.dev/dl/client/latest"
    regex(/^v?(\d+(?:[.-]\w+)+)$/i)
  end

  rename "*", "sprite"

  binary "sprite"
  generate_completions_from_executable "sprite", "completion"

  zap trash: "~/.sprites"
end
