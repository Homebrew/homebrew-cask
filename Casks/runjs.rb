cask "runjs" do
  version "1.15.0"
  sha256 "f41c2f1c93eb1db1945fa5f73a81fd9aae644448cb69757bf05d864cb827fa16"

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
