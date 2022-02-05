cask "drop-to-gif" do
  version "1.28"
  sha256 "e4814912d1054f9d1c56357d10480ffb59996e59a54b969b45b2d01835fdc707"

  url "https://github.com/mortenjust/droptogif/releases/download/#{version}/Drop.to.GIF#{version.no_dots}.zip",
      verified: "github.com/mortenjust/droptogif/"
  name "Drop to GIF"
  desc "Zero-click animated Gifs"
  homepage "https://mortenjust.github.io/droptogif/"

  app "Drop to GIF.app"

  zap trash: [
    "~/Library/Preferences/com.mortenjust.Drop-to-GIF.plist",
    "~/Library/Saved Application State/com.mortenjust.Drop-to-GIF.savedState",
  ]
end
