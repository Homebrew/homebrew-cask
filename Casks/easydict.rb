cask "easydict" do
  version "1.2.3"
  sha256 "23976414a46a5bc5dae1ac6ae31018559f96ef1722b0162a357312d863c10d27"

  url "https://github.com/tisfeng/Easydict/releases/download/#{version}/Easydict.dmg"
  name "Easydict"
  desc "Dictionary and translator app"
  homepage "https://github.com/tisfeng/Easydict/"

  auto_updates true

  app "Easydict.app"

  zap trash: [
    "~/Library/Application Support/com.izual.Easydict",
    "~/Library/Caches/com.izual.Easydict",
    "~/Library/HTTPStorages/com.izual.Easydict",
    "~/Library/Preferences/com.izual.Easydict.plist",
  ]
end
