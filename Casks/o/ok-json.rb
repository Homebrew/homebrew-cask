cask "ok-json" do
  version "2.6.4"
  sha256 :no_check

  url "https://okjson.app/download/okjson-latest.zip"
  name "OK JSON"
  desc "Scriptable JSON formatter and editor"
  homepage "https://okjson.app/"

  livecheck do
    url "https://okjson.app/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "OK JSON.app"

  zap trash: [
    "~/Library/Containers/net.shinystone.OKJSON",
    "~/Library/Group Containers/group.net.shinystone.OKJSON",
  ]
end
