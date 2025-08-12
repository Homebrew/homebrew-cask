cask "ishare" do
  version "4.2.6"
  sha256 "32d07f4703ec45dc00b6cd5e92df289b90c99e236aaa85d302ccb88b6dabb76b"

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
