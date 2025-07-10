cask "btp" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.90.2"
  sha256 arm:          "6183680711945bbf4b6fd3e5cd9cb852a95d2f0292416ad586c6dd37cac50ddf",
         intel:        "5d7ab7e4625797a7d036e0844948efae54b7dfcddee1fc7fe54efc5d8a075dc5",
         arm64_linux:  "386d0c0feef3396235d25378ca63cefadd19b14d49317e2e8fff6555abf54347",
         x86_64_linux: "aeec6dacad62a6c9d80f864144eafb9e74f6ed9f524af5407c47b02f9133541e"

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
