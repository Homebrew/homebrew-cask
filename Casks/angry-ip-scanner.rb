cask "angry-ip-scanner" do
  arch arm: "Arm64", intel: "X86"

  version "3.9.0"
  sha256 arm:   "7a3c9d753d8905987a2cccdca22a3dc2e1002ea396574c44cd38688bd184c9e8",
         intel: "4beb7f83d9996c45b7d2f0b504400ad6b87c93793c231d629c47733e8275323c"

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
