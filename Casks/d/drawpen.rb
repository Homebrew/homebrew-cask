cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.59"
  sha256 arm:   "e938b5c7613fd65439a2b3ec3c0a944e9e504ce30704e3de86c395da7057b02f",
         intel: "d2fba1000c889ee91bc1f67687d5b15a689e53608c1ef167052d817c694408a6"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dmytro.vasin.drawpen.sfl*",
    "~/Library/Application Support/DrawPen",
    "~/Library/Caches/dmytro.vasin.drawpen*",
    "~/Library/HTTPStorages/dmytro.vasin.drawpen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
