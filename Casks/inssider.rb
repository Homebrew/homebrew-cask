cask "inssider" do
  version "0.0.4.5,8"
  sha256 "aae290a9e1c35db4b923ff6cf64332b1825ab82a848761e10debdddf3e3f9cfa"

  url "https://metageek.link/inssider-5-mac-release-folder/inSSIDer-#{version.csv.first}.dmg",
      verified: "metageek.link/"
  name "inSSIDer"
  homepage "https://www.metageek.com/products/inssider/"

  livecheck do
    url "https://metageek.link/inssider-5-mac-update-xml"
    strategy :sparkle
  end

  app "inSSIDer.app"
end
