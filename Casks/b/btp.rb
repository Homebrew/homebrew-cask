cask "btp" do
  arch arm: "arm64", intel: "amd64"

  version "2.54.0"
  sha256 arm:   "b4c6249be238b6e8f06fdf418e62b6b073abc365ad092c748c0890e38c9edf75",
         intel: "118dd5df0f14333f4933f13d72797cc9c8856aa95da4b8e69e4e4f0db7558444"

  url "https://tools.hana.ondemand.com/additional/btp-cli-darwin-#{arch}-#{version}.tar.gz",
      cookies: {
        "eula_3_1_agreed" => "tools.hana.ondemand.com/developer-license-3_1.txt",
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
    license "https://tools.hana.ondemand.com/developer-license-3_1.txt"
  end
end
