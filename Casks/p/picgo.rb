cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.4.2"
  sha256 arm:   "10d33289a9e85713dedd31778b1f2b19a8dc8e1cd4b51b3aa12a843b4990bbe0",
         intel: "abe897eec83c76401c19ef8394be11f1f92e09a97809631e10abf84479b65d4a"

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
