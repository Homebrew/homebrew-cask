cask "tiddly" do
  version "0.0.20"
  sha256 "d41af9408f0a3f160c486e568883ac55c7388274f63c6ec3117db616de3f1c0c"

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
  name "TiddlyWiki"
  desc "Browser for TiddlyWiki"
  homepage "https://github.com/Jermolene/TiddlyDesktop"

  app "TiddlyDesktop-mac64-v#{version}/TiddlyDesktop.app"

  zap trash: [
    "~/Library/Application Support/TiddlyDesktop",
    "~/Library/Caches/TiddlyDesktop",
    "~/Library/Preferences/com.tiddlywiki.plist",
    "~/Library/Saved Application State/com.tiddlywiki.savedState",
  ]
end
