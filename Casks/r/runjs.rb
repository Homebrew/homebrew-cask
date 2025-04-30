cask "runjs" do
  version "3.1.1"
  sha256 "030d92704a6cb2690c533c20ac0b7b958a9c6f01a8d9484904d15f851ca80b3f"

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
  depends_on macos: ">= :catalina"

  app "RunJS.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/me.lukehaas.runjs.sfl*",
    "~/Library/Application Support/runjs",
    "~/Library/Logs/RunJS",
    "~/Library/Preferences/me.lukehaas.runjs.plist",
    "~/Library/Saved Application State/me.lukehaas.runjs.savedState",
  ]
end
