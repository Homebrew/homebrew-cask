cask "free42-binary" do
  version "3.0.6"
  sha256 :no_check

  url "https://thomasokken.com/free42/download/Free42Mac.zip"
  name "Free42 Binary"
  desc "HP-42S calculator simulator"
  homepage "https://thomasokken.com/free42/"

  livecheck do
    url "https://thomasokken.com/free42/history.html"
    regex(/:\s*release\s*(\d+(?:\.\d+)+[a-z]?)\s*(?:$|\([^\n)]*MacOS)/i)
  end

  app "Free42 Binary.app"

  zap trash: [
    "~/Library/Application Support/Free42",
    "~/Library/Preferences/com.thomasokken.Free42.plist",
    "~/Library/Caches/com.thomasokken.Free42",
  ]
end
