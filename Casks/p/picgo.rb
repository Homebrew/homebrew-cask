cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "3.0.3"
  sha256 arm:   "8eaed1a22a01eb3cd2f41e4d3ac5d672b51ac5c56e1b4d7add4688acb9ad2c5b",
         intel: "770a7783918c784add19d2e5537c1fd47440e4371d0701cb040bed85ae972c8e"

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
