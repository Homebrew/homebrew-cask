cask "ryver" do
  version "1.3.2"
  sha256 "949abb92a3df5034fd8c81e1fe78a9c7bd7be2ad699bef9d423ad3a39cd48d54"

  url "https://d3vkb1nw20iqfq.cloudfront.net/mac/Ryver-#{version}.dmg",
      verified: "d3vkb1nw20iqfq.cloudfront.net/"
  name "Ryver"
  homepage "https://ryver.com/"

  livecheck do
    url "https://ryver.com/download/mac/stable"
    strategy :header_match
  end

  app "Ryver.app"
end
