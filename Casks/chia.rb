cask "chia" do
  version "1.0.5"
  sha256 "d77ae2e3e7187d892a8da1e9be1700d204da46c0e1151f44f3d0ec61adff7524"

  url "https://github.com/Chia-Network/chia-blockchain/releases/download/#{version}/Chia-#{version}.dmg",
      verified: "github.com/Chia-Network/chia-blockchain/"
  name "Chia Blockchain"
  desc "GUI Python Implementation for Chia Blockchain"
  homepage "https://www.chia.net/"

  livecheck do
    url "https://github.com/Chia-Network/chia-blockchain/releases"
    strategy :page_match
    regex(%r{href=.*?/Chia-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Chia.app"
end
