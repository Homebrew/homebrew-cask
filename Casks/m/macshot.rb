cask "macshot" do
  version "3.5.1"
  sha256 "b5b07143d8daa861c229ce3c01b8f7bf3c759efbcf8ae54230b85015dc684072"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/MacShot.dmg"
  name "MacShot"
  desc "Screenshot and screen recording tool"
  homepage "https://github.com/sw33tLie/macshot"

  depends_on macos: ">= :monterey"

  app "macshot.app"

  zap trash: [
    "~/Library/Application Support/macshot",
    "~/Library/Preferences/com.sw33tlie.macshot.macshot.plist",
  ]
end
