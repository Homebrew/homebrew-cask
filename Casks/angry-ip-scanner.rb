cask "angry-ip-scanner" do
  arch = Hardware::CPU.intel? ? "X86" : "Arm64"

  version "3.8.0"

  if Hardware::CPU.intel?
    sha256 "6c514ecc4155806aef7eb0a913cf4a88214e20bdd69694ad9ac5c565d588dea9"
  else
    sha256 "eb91b66cced883e4445f8e26fbf33689c82d04f5c736866d08d00847bb46b1f8"
  end

  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac#{arch}-#{version}.zip",
      verified: "github.com/angryip/ipscan/"
  name "Angry IP Scanner"
  desc "Network scanner"
  homepage "https://angryip.org/"

  app "Angry IP Scanner.app"

  caveats do
    depends_on_java "11"
  end
end
