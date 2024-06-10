cask "inky" do
  version "0.15.0"
  sha256 "e11b90b8723417a85792f8233384e9240bb0ec84d729a3da9d69d873a1b5563c"

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
