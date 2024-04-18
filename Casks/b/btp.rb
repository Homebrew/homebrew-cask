cask "btp" do
  arch arm: "arm64", intel: "amd64"

  version "2.64.0"
  sha256 arm:   "e4adae692cc500ec63e8f007c9efa246a97cb6efe75326964644500092621579",
         intel: "6a303474216c0bf91fc4db219bef62d67047150a76482b60620517c3cb987711"

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
