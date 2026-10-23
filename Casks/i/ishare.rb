cask "ishare" do
  version "5.3.0"
  sha256 "327cab212f15f3727c0c3f1645db916cbfcadc94e2b837710f2a639ebb4f968a"

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
    "~/Library/Caches/dev.adrian.ishare",
    "~/Library/Containers/dev.adrian.ishare.sharemenuext",
    "~/Library/HTTPStorages/dev.adrian.ishare",
    "~/Library/Preferences/dev.adrian.ishare.plist",
  ]
end
