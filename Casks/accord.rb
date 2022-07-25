cask "accord" do
  version "1.4"
  sha256 "591674f81aa29c1c4ba4bb7f3457c7501c7975e247f15365bddf57a6a973d316"

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
