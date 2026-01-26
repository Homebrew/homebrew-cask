cask "finicky" do
  version "4.2.2"
  sha256 "5f0020782c9075d27411d6083d7be8663891e3146c86eafad118c44acc12208f"

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.dmg"
  name "Finicky"
  desc "Utility for customizing which browser to start"
  homepage "https://github.com/johnste/finicky"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Finicky.app"

  zap trash: "~/Library/Preferences/se.johnste.finicky.plist"
end
