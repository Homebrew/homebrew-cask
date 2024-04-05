cask "btp" do
  arch arm: "arm64", intel: "amd64"

  version "2.61.0"
  sha256 arm:   "b776ea5136a6d7c431b1e060e655b869512248faad9ac6711e6767a588a64c5d",
         intel: "82de75c8c2aa4ac4ac06781e3f47abf18f5a2a5195ed53a8bc29f658625234bc"

  url "https://tools.hana.ondemand.com/additional/btp-cli-darwin-#{arch}-#{version}.tar.gz",
      cookies: {
        "eula_3_2_agreed" => "tools.hana.ondemand.com/developer-license-3_2.txt",
      }
  name "SAP Business Technology Platform Command Line Interface"
  desc "CLI for the SAP Business Technology Platform"
  homepage "https://tools.hana.ondemand.com/#cloud-cpcli"

  livecheck do
    url :homepage
    regex(/btp[._-]cli[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  binary "darwin-#{arch}/btp", target: "btp"

  # No zap stanza required

  caveats do
    license "https://tools.hana.ondemand.com/developer-license-3_2.txt"
  end
end
