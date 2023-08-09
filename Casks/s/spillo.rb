cask "spillo" do
  version "2.0,158"
  sha256 "0228766974d6a65de9aca459a21e8ff06af813f9c3643ba5a8c98486e3bc8d0c"

  url "https://bananafish-builds.s3.amazonaws.com/spillo/spillo_#{version.csv.second}_#{version.csv.first}.zip",
      verified: "bananafish-builds.s3.amazonaws.com/spillo/"
  name "Spillo"
  homepage "https://bananafishsoftware.com/products/spillo/"

  livecheck do
    url "https://bananafishsoftware.com/feeds/spillo.xml"
    strategy :sparkle
  end

  app "Spillo.app"
end
