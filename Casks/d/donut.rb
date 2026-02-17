cask "donut" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.2"
  sha256 arm:   "a0e50119a69828bbde6a0a4a7ab23ebf77659347f137df3f3154e09383467687",
         intel: "0c34a9930e62c39efde8cbc4c0ea5ff8c8d56f58e71add86c09b2ab76c30a994"

  url "https://github.com/zhom/donutbrowser/releases/download/v#{version}/Donut_#{version}_#{arch}.dmg",
      verified: "github.com/zhom/donutbrowser/"
  name "Donut"
  desc "Simple yet powerful anti-detect browser"
  homepage "https://donutbrowser.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Donut.app"

  zap trash: [
    "~/Library/Application Support/com.donutbrowser",
    "~/Library/Caches/com.donutbrowser",
  ]
end
