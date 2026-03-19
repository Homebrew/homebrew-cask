cask "btp" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.106.1"
  sha256 arm:          "53cf73af5b919dcf9b280b6ef03f28b41b1b9f283f747179e8a4a4e95dbbe3f5",
         intel:        "81c547b9bb96b5387cb60b6e8edd289857a97bcd940aac286c647de25b72f076",
         arm64_linux:  "4e978f5101c10e9ddc00822c4a174c23201e4f5375b809e9284fb8863700b686",
         x86_64_linux: "2faca3810e33697513b7d440230581066ad906667c5f0138885e9ce8c7bb05be"

  url "https://tools.hana.ondemand.com/additional/btp-cli-#{os}-#{arch}-#{version}.tar.gz",
      cookies: {
        "eula_3_2_agreed" => "tools.hana.ondemand.com/developer-license-3_2.txt",
      }
  name "SAP Business Technology Platform Command Line Interface"
  desc "CLI for the SAP Business Technology Platform"
  homepage "https://tools.hana.ondemand.com/#cloud-cpcli"

  livecheck do
    url :homepage
    regex(/btp[._-]cli[._-]#{os}[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  binary "#{os}-#{arch}/btp"

  # No zap stanza required

  caveats do
    license "https://tools.hana.ondemand.com/developer-license-3_2.txt"
  end
end
