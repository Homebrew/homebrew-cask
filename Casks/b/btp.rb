cask "btp" do
  arch arm: "arm64", intel: "amd64"

  version "2.83.0"
  sha256 arm:   "4bdd685a85b0aad8d52f7e9f9a6685dea688730b2b8ac0b546cc0434513ad37f",
         intel: "2277b0d9753faf35e6c4911dc53cd4eb225fdf16d7edff0a51a3c0740afa0468"

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
