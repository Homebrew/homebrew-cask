cask "accord" do
  version "1.3.1"
  sha256 "645ce99c275aa027d30ad9a758d11075dceb5f1d19e92a9af6574ad9c760fe15"

  url "https://github.com/evelyneee/accord/releases/download/v#{version}/Accord.zip"
  name "accord"
  desc "Discord client written in Swift for modern Macs"
  homepage "https://github.com/evelyneee/accord"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Accord.app"

  zap trash: [
    "~/Library/Application Scripts/red.evelyn.accord",
    "~/Library/Containers/red.evelyn.accord",
  ]
end
