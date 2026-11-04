cask "ishare" do
  version "5.6.0"
  sha256 "a58fe002b376f0613f36551e7eb9255e4319d5a42fa915bdb67f5edda401b6eb"

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
