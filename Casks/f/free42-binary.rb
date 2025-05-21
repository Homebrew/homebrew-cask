cask "free42-binary" do
  version "3.3.5"
  sha256 :no_check

  url "https://thomasokken.com/free42/download/Free42Mac.zip"
  name "Free42 Binary"
  desc "HP-42S calculator simulator"
  homepage "https://thomasokken.com/free42/"

  livecheck do
    url "https://thomasokken.com/free42/history.html"
    regex(/:\s*release\s*(\d+(?:\.\d+)+[a-z]?)\s*(?:$|\([^\n)]*MacOS)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Free42 Binary.app"

  zap trash: [
    "~/Library/Application Support/Free42",
    "~/Library/Caches/com.thomasokken.Free42b",
    "~/Library/HTTPStorages/com.thomasokken.Free42b",
    "~/Library/HTTPStorages/com.thomasokken.Free42b.binarycookies",
    "~/Library/Preferences/com.thomasokken.Free42b.plist",
    "~/Library/Saved Application State/com.thomasokken.Free42b",
  ]
end
