cask "readest" do
  version "0.9.56"
  sha256 "6150aa3a3bd5790b90a98df208195a21ac624dff55c29f44cc537fd7f64b7711"

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
