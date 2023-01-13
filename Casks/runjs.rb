cask "runjs" do
  version "2.7.4"
  sha256 "70039b2278507a7a111db316d22cc73e1c9bbaf045a3d2ecd1d5512cd4f0e498"

  url "https://github.com/lukehaas/RunJS/releases/download/v#{version}/RunJS-#{version}-universal.dmg",
      verified: "github.com/lukehaas/RunJS/"
  name "RunJS"
  desc "JavaScript playground that auto-evaluates as code is typed"
  homepage "https://runjs.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "RunJS.app"

  zap trash: [
    "~/Library/Application Support/runjs",
    "~/Library/Logs/RunJS",
    "~/Library/Preferences/me.lukehaas.runjs.plist",
    "~/Library/Saved Application State/me.lukehaas.runjs.savedState",
  ]
end
