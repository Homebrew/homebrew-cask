cask "accord" do
  version "1.0.2"
  sha256 "f554fbd35890ac160f2b47d646ce4d29884036d10ed464bf2fa2d95bb69471fa"

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
