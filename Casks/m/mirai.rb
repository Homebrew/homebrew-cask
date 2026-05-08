cask "mirai" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.6"
  sha256 arm:   "877c0967f31ce0be82d4e4c8d2130482193a141bf75fa85d9a52fa02da8b7281",
         intel: "7cf84238a902f94c55afc187fff4e2b3672cc2ee22a18805fad2e96c17f9b51a"

  url "https://github.com/trymirai/uzu/releases/download/#{version}/mirai-#{arch}-apple-darwin.tar.gz",
      verified: "github.com/trymirai/uzu/"
  name "Mirai"
  desc "Inference engine for AI models"
  homepage "https://trymirai.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "mirai-#{arch}-apple-darwin", target: "mirai"

  zap rmdir: "~/.config/com.trymirai.cli"
end
