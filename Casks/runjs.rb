cask "runjs" do
  version "1.14.0"
  sha256 "53d58969f8d87d171ad642a4162805960f696570e4cd7b73b201c8364bef29a9"

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
