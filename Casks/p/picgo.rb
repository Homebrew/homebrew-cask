cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "11d30a6d1e43fdc6aa08ba69867056ce7e187907a86d53ca40d8564a3442dac6",
         intel: "e173ed0233735f9c95a3dbb33afd88bb522675bffecf4dba351d3bf0a2aed396"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-#{arch}.dmg"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://github.com/Molunerfinn/PicGo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "PicGo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.molunerfinn.picgo.sfl*",
    "~/Library/Application Support/picgo",
    "~/Library/Preferences/com.molunerfinn.picgo.plist",
    "~/Library/Services/Upload pictures with PicGo.workflow",
  ]
end
