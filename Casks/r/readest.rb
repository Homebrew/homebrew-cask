cask "readest" do
  version "0.9.72"
  sha256 "b0be4ba25c80a34505e6575f61d8c939d8bbb434de31c3c3e067e9026c7cee96"

  url "https://github.com/readest/readest/releases/download/v#{version}/Readest_#{version}_universal.dmg",
      verified: "github.com/readest/readest/"
  name "Readest"
  desc "Ebook reader"
  homepage "https://readest.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Readest.app"

  zap trash: [
    "~/Library/Application Support/com.bilingify.readest",
    "~/Library/Caches/com.bilingify.readest",
    "~/Library/Caches/readest",
    "~/Library/Preferences/com.bilingify.readest.plist",
    "~/Library/WebKit/com.bilingify.readest",
    "~/Library/WebKit/readest",
  ]
end
