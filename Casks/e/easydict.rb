cask "easydict" do
  version "2.11.0"
  sha256 "ccbd68f553671f429382ba89447027b9dfd74433c669604218141b24cfbac543"

  url "https://github.com/tisfeng/Easydict/releases/download/#{version}/Easydict.dmg"
  name "Easydict"
  desc "Dictionary and translator app"
  homepage "https://github.com/tisfeng/Easydict/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Easydict.app"

  zap trash: [
    "~/Library/Application Support/com.izual.Easydict",
    "~/Library/Caches/com.izual.Easydict",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.izual.Easydict",
    "~/Library/HTTPStorages/com.izual.Easydict",
    "~/Library/HTTPStorages/com.izual.Easydict.binarycookies",
    "~/Library/Preferences/com.izual.Easydict.plist",
    "~/Library/WebKit/com.izual.Easydict",
  ]
end
