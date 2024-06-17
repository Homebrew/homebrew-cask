cask "inky" do
  version "0.15.1"
  sha256 "75a8a28202a093a3ba5f6d8e66137f4208df5705aed420af0d460fe6efb2252f"

  url "https://github.com/inkle/inky/releases/download/#{version}/inky.dmg",
      verified: "github.com/inkle/inky/"
  name "Inky"
  desc "Editor for ink: inkle's narrative scripting language"
  homepage "https://www.inklestudios.com/ink/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Inky.app"

  zap trash: [
    "~/Library/Application Support/Inky",
    "~/Library/Logs/Inky",
    "~/Library/Preferences/com.inkle.inky.helper.plist",
    "~/Library/Preferences/com.inkle.inky.plist",
    "~/Library/Saved Application State/com.inkle.inky.savedState",
  ]
end
