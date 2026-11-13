cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "3.0.4"
  sha256 arm:   "11c06eb99255279238f794a89c63ef9d57f7051c1ffdb31f2b7e6b903902da74",
         intel: "30893c9a1d76de348baf149ca2fe15136e33f18a4d304e6129218c3ac4206f46"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-#{arch}.dmg"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://picgo.app/"

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
