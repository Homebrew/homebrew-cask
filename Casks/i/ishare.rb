cask "ishare" do
  version "5.5.0"
  sha256 "0b4801ee3f14eb0287c1eda0c1a3d08987faa23ba61227da214eeacd0d7760cd"

  url "https://github.com/castdrian/ishare/releases/download/v#{version}/ishare.dmg"
  name "ishare"
  desc "Screenshot capture utility"
  homepage "https://github.com/castdrian/ishare/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :sequoia

  app "ishare.app"

  zap trash: [
    "~/Library/Application Scripts/dev.adrian.ishare.sharemenuext",
    "~/Library/Application Scripts/dev.adrian.ishare.widgets",
    "~/Library/Application Scripts/L988J7YMK5.group.dev.adrian.ishare",
    "~/Library/Caches/dev.adrian.ishare",
    "~/Library/Containers/dev.adrian.ishare.sharemenuext",
    "~/Library/Containers/dev.adrian.ishare.widgets",
    "~/Library/Group Containers/L988J7YMK5.group.dev.adrian.ishare",
    "~/Library/HTTPStorages/dev.adrian.ishare",
    "~/Library/Preferences/dev.adrian.ishare.plist",
  ]
end
