cask "ishare" do
  version "4.0.1"
  sha256 "b087166c250b94147c80b65056e1a782acc5077830bbf22af973a55cff13fe28"

  url "https://github.com/castdrian/ishare/releases/download/v#{version}/ishare.dmg"
  name "ishare"
  desc "Simple and efficient screenshot capture utility"
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
