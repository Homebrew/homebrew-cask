cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "12e12ca0e6c85fac0a82532ea67e36e46a94b7331f1489bf800569d4bc262772",
         intel: "0953a6839efe9266991e6acbf780ddcb97982a30cdd5c20e30879b97f2f03833"

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
