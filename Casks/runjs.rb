cask "runjs" do
  version "1.13.1"
  sha256 "c011c916400dd113aa7c87a64a38a1759586c5bb9cd4d2b6eeb4fcd9667aef18"

  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg",
      verified: "github.com/lukehaas/runjs/"
  appcast "https://github.com/lukehaas/runjs/releases.atom"
  name "RunJS"
  desc "JavaScript playground that auto-evaluates as code is typed"
  homepage "https://runjs.app/"

  auto_updates true

  app "RunJS.app"

  zap trash: [
    "~/Library/Application Support/runjs",
    "~/Library/Logs/RunJS",
    "~/Library/Preferences/me.lukehaas.runjs.plist",
    "~/Library/Saved Application State/me.lukehaas.runjs.savedState",
  ]
end
