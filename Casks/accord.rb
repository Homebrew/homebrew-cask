cask "accord" do
  version "1.3"
  sha256 "4f48e9f6f4e2df22ff4e90f734fc791f65ab921dd49924fc5342bba38a044835"

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
