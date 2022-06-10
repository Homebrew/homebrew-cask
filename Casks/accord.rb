cask "accord" do
  version "1.2"
  sha256 "934c313087769d4321767c33e1f1ab9c439b58c30afa79e67b69a8aaf34d81c6"

  url "https://github.com/evelyneee/accord/releases/download/v#{version}/Accord.zip"
  name "accord"
  desc "Discord client written in Swift for modern Macs"
  homepage "https://github.com/evelyneee/accord"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Accord.app"

  zap trash: [
    "~/Library/Application Scripts/red.evelyn.accord",
    "~/Library/Containers/red.evelyn.accord",
  ]
end
