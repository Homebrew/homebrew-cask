cask "lite-xl" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.7"
  sha256 arm:   "e6a16c5e0013858fcc58a908b001cca2178a76cd998433130e8831410d917a65",
         intel: "df49f0653600b7a132e5d5b3f1b65f7a5eb361b2f6224ba4fbe5908c93e6b11e"

  url "https://github.com/lite-xl/lite-xl/releases/download/v#{version}/lite-xl-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/lite-xl/lite-xl/"
  name "Lite XL"
  desc "Lightweight text editor written in Lua, adapted from lite"
  homepage "https://lite-xl.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Lite XL.app"

  zap trash: "~/Library/Preferences/com.lite-xl.plist"
end
