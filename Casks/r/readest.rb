cask "readest" do
  version "0.9.19"
  sha256 "60f5c7ae95f0c91cb7a4e540e8f13c882a2c0e1988f592c9556d9685d3258381"

  url "https://github.com/readest/readest/releases/download/v#{version}/Readest_#{version}_universal.dmg",
      verified: "github.com/readest/readest/"
  name "Readest"
  desc "Ebook reader"
  homepage "https://readest.com/"

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
