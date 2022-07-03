cask "runjs" do
  version "2.5.0"
  sha256 "7990c791094789f436941ce4c24a00d55db1c7f677f372d6e30731400bfc8ba2"

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
