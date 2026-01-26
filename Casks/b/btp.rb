cask "btp" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.97.0"
  sha256 arm:          "cf0ac6c08c69d56e58a6582b2ba3d336ac4eab878ec897dc238efee93acb39cc",
         intel:        "be95bedac5b41100494902738fb7ca24cbbbbd6be25eed48a860cb145c9f3083",
         arm64_linux:  "260193419b80dc4ed8a3ab5c21a8c63821f01a973f3276afa562e69d3c0935ae",
         x86_64_linux: "487d02619b9b1c9c3341ab789083ab53d1857ee68e8aa33dc3a9ff6fadc0683f"

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
