cask "readest" do
  version "0.9.91"
  sha256 "bf3240a7ab7a85f3b6ff0fca47eca49d82441592a54f5604bc599909d8e85efb"

  url "https://github.com/readest/readest/releases/download/v#{version}/Readest_#{version}_universal_darwin.dmg",
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
