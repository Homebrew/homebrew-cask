cask "ishare" do
  version "4.2.4"
  sha256 "a98f69cc9e3ef33ecbf46a9020c00ab64ba7ffd6ba56d97962f0c33ff7d59cb2"

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
