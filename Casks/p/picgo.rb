cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.5.3"
  sha256 arm:   "dbf9d723f006b961a148026a4c328d10e268a83b98657ad937ebc7cdc529e211",
         intel: "f6566f2b8bca50767879a8391adafc000edb54c1fb24d696a0bf8e37a9b2a790"

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
