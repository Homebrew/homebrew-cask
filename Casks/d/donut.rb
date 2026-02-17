cask "donut" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.2"
  sha256 arm:   "b3561a92ab5bf338291c25b42bf2eb30bf4b013be379d78ffb275edbb899b0a9",
         intel: "9ce47c9488126d3bdffbb0ec66c2979f4b9d759eb60078127cb294fd6fd07024"

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
