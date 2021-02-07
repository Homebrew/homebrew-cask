cask "runjs" do
  version "1.12.2"
  sha256 "3ad31592e79c97c5f78b057b43a5b57380abd23b82d353a055bb0d7b34f32eea"

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
