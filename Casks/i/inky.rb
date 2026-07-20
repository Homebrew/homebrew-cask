cask "inky" do
  version "0.15.2"
  sha256 "7f2d6c69e63c12ae1467824655aecc17a24bc299fd2860e8f21b08f6551ac7d5"

  url "https://github.com/inkle/inky/releases/download/#{version}/inky.dmg",
      verified: "github.com/inkle/inky/"
  name "Inky"
  desc "Editor for ink: inkle's narrative scripting language"
  homepage "https://www.inklestudios.com/ink/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Inky.app"

  zap trash: [
    "~/Library/Application Support/Inky",
    "~/Library/Logs/Inky",
    "~/Library/Preferences/com.inkle.inky.helper.plist",
    "~/Library/Preferences/com.inkle.inky.plist",
    "~/Library/Saved Application State/com.inkle.inky.savedState",
  ]
end
