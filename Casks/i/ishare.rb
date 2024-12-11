cask "ishare" do
  version "4.1.5"
  sha256 "7f8fcffa6f8da58376ff5a005fd01bb774bd156128680f04ac65588972e8f4aa"

  url "https://github.com/castdrian/ishare/releases/download/v#{version}/ishare.dmg"
  name "ishare"
  desc "Screenshot capture utility"
  homepage "https://github.com/castdrian/ishare/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sequoia"

  app "ishare.app"

  zap trash: [
    "~/Library/Application Scripts/dev.adrian.ishare.sharemenuext",
    "~/Library/Containers/dev.adrian.ishare.sharemenuext",
    "~/Library/Preferences/dev.adrian.ishare.plist",
  ]
end
