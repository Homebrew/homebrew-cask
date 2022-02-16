cask "angry-ip-scanner" do
  arch = Hardware::CPU.intel? ? "X86" : "Arm64"

  version "3.8.2"

  if Hardware::CPU.intel?
    sha256 "e37228d7dc5e4766d9070bca5f0d616ae04887d7f6ee7b30cc8ea5a0190c7441"
  else
    sha256 "bc811e6d2c2df7fd2826ba0545a5a27f53d6da1420abfb8ff5ff8e0427a9317d"
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
