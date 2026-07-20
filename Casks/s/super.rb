cask "super" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.3.0"
  sha256 arm:          "b5124ec88e1ba908909902f98c6ebc9754d034cecd0690f078a52f384dbf6eeb",
         x86_64:       "2c7cf6c21c4c486541b3d34df614a07fc6cea9b45bb8b63f25e3df64136ae3a4",
         x86_64_linux: "2bbc1fab55be4124a4ffa253eba806590b73509935ac8740599a47caf9d3185d",
         arm64_linux:  "81384df59e7ca8d2a59855e03040c58a7402539b75dc55e78de46bf68cb49257"

  url "https://github.com/brimdata/super/releases/download/v#{version}/super-v#{version}.#{os}-#{arch}.tar.gz"
  name "SuperDB"
  desc "Analytics database that fuses structured and semi-structured data"
  homepage "https://github.com/brimdata/super"

  binary "super"

  # No zap stanza required
end
