cask "readest" do
  version "0.9.90"
  sha256 "aeca3414aaa0860b6a8a1ac0dec57e9ec26310e47e2bfb54852498c88bf63a27"

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
