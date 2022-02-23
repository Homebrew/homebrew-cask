cask "guarda" do
  version "1.0.20"
  sha256 "69e88c2ccb05ec2f8004045f0d0940ae578b51992975e6b8bdbda78e0e95e044"

  url "https://github.com/guardaco/guarda-desktop-releases/releases/download/v#{version}/Guarda-#{version}.dmg", verified: "github.com/guardaco/"
  name "Guarda"
  desc "Multi-chain, non-custodial, crypto wallet"
  homepage "https://guarda.com/"

  app "Guarda.app"
end
