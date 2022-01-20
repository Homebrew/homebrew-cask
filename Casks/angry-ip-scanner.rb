cask "angry-ip-scanner" do
  arch = Hardware::CPU.intel? ? "X86" : "Arm64"

  version "3.8.1"

  if Hardware::CPU.intel?
    sha256 "e60b16e124c84e2368a0bb9dd85a282a163ad1cc9946745ab14adcca5075d13f"
  else
    sha256 "b9e13383878ef7999d46b18b41d6699ce5c406af071ec849235bdd103025e3e5"
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
