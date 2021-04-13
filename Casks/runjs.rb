cask "runjs" do
  version "1.15.1"
  sha256 "be431206de479f57c0624ea8bdfaf8a5815669f92e47b74afd51b0bc00aec6fa"

  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg",
      verified: "github.com/lukehaas/runjs/"
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
