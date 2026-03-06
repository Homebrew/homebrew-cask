cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.5.3"
  sha256 arm:   "9c9bbcac1a143fdc15dec62d2f2df1be06eda8dba64476b704fe3f366af98251",
         intel: "764dce20b3550d0365cc0f49cc7b8b6ffb80f1a02a723eb0cc47e21f80355365"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-#{arch}.dmg"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://github.com/Molunerfinn/PicGo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "PicGo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.molunerfinn.picgo.sfl*",
    "~/Library/Application Support/picgo",
    "~/Library/Preferences/com.molunerfinn.picgo.plist",
    "~/Library/Services/Upload pictures with PicGo.workflow",
  ]
end
