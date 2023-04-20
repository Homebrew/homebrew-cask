cask "angry-ip-scanner" do
  arch arm: "Arm64", intel: "X86"

  version "3.9.1"
  sha256 arm:   "bc75191718b8556c1c8610987285d98f7421044d7be117252d5f35516af3205c",
         intel: "e1c6aea6094d317f351d9260fd6ea1a148f8a102c919c7067e2d39cd1016a8f7"

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
