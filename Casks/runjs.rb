cask "runjs" do
  version "2.9.0"
  sha256 "cc5821b98a9d846ce58ce7233836ed7d093a264ccaa9eedceffd528647bf0f7b"

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
