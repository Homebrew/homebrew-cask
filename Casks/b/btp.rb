cask "btp" do
  arch arm: "arm64", intel: "amd64"

  version "2.77.1"
  sha256 arm:   "b67df627194d48269a55f0867275277c5a3e32ea668cdb791a5d57e519bbbc65",
         intel: "91d80570bed19e7107410e127e2f721efa989d14a5c1c881333164bc7f6c93b4"

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
