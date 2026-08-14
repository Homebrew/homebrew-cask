cask "dicty" do
  version "1.0.10-3"
  sha256 "a50e1981106d6935142bc4d5788fd9750be6899339dd086c89261f758d06d556"

  url "https://github.com/dicty-io/dicty/releases/download/v#{version}/Dicty.dmg"
  name "Dicty"
  desc "Voice-to-text dictation and documentation assistant"
  homepage "https://dicty.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Dicty.app"

  zap trash: [
    "~/Library/Application Support/Dicty",
    "~/Library/Caches/com.kazmin.DictyClient",
    "~/Library/Preferences/com.kazmin.DictyClient.plist",
  ]
end
