cask "spillo" do
  version "158_2.0"
  sha256 "0228766974d6a65de9aca459a21e8ff06af813f9c3643ba5a8c98486e3bc8d0c"

  url "https://bananafish-builds.s3.amazonaws.com/spillo/spillo_#{version}.zip",
      verified: "bananafish-builds.s3.amazonaws.com/spillo/"
  appcast "https://bananafishsoftware.com/feeds/spillo.xml"
  name "Spillo"
  homepage "https://bananafishsoftware.com/products/spillo/"

  app "Spillo.app"
end
