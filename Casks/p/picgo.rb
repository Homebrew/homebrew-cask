cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "f125eb158966616996e0715608044d4fc7cd8d36f85f877e5c8762ef550c5ae2",
         intel: "0a5430233833eaa59294b7ea39a47e8e206abf438738dd99dc01f237cc3f136f"

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
