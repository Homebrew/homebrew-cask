cask "accord" do
  version "1.6.1"
  sha256 "35df7df806ffdeebb6d90ce734adf0fb2161e40101eb2ca22639cf602091a7c5"

  url "https://github.com/evelyneee/accord/releases/download/v.#{version}/Accord.zip"
  name "accord"
  desc "Discord client written in Swift for modern Macs"
  homepage "https://github.com/evelyneee/accord"

  livecheck do
    url :url
    regex(%r{href=.*?/tag/v?\.?(\d+(?:\.\d+)+)["' >]}i)
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Accord.app"

  zap trash: [
    "~/Library/Application Scripts/red.evelyn.accord",
    "~/Library/Containers/red.evelyn.accord",
  ]
end
