cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "c9a1ff414b6cf76cbdb334736e37e15d9102131f1b4ef5610c3b6209d1fb6cd8",
         intel: "3b4c85306ace5748a9183a5d4c7831a9c63cc2d29f7b082d766825bfac5530db"

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
    "~/Library/Application Support/picgo",
    "~/Library/Preferences/com.molunerfinn.picgo.plist",
    "~/Library/Services/Upload pictures with PicGo.workflow",
  ]
end
