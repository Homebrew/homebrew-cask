cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.15"
  sha256 arm:   "e037aa6d07fae3fcd9b5e5631da3fc49ecacf20b8302d442ccc2bcc3af699c72",
         intel: "be8a048304ab0fec61f9542c819950255493d723f79a8f07efba602dab2b146d"

  url "https://github.com/cardisoft/cardinal/releases/download/v#{version}/Cardinal_#{version}_#{arch}.dmg"
  name "Cardinal Search"
  desc "Fastest file searching tool"
  homepage "https://github.com/cardisoft/Cardinal"

  depends_on macos: ">= :monterey"

  app "Cardinal.app"

  zap trash: [
    "~/Library/Application Support/com.cardinal.one",
    "~/Library/Caches/com.cardinal.one",
    "~/Library/Preferences/com.cardinal.one.plist",
    "~/Library/Webkit/com.cardinal.one",
  ]
end
