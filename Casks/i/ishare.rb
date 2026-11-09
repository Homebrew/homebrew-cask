cask "ishare" do
  version "5.8.0"
  sha256 "c09ee156c06229900c944597b988333e397ced36f707b009ec9679e8b71967b0"

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
