cask "hackdesk" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.7"
  sha256 arm:   "c44c4d534e9d04c92ed8127a64cfd97dd07ce0d46746ca4c5454d3a0af68c15e",
         intel: "35bbc531d0fb25f2e9832dac586ae488f0bcb398a91716a8e3f1f8022fabca6c"

  url "https://github.com/EastSun5566/hackdesk/releases/download/hackdesk-v#{version}/HackDesk_#{version}_#{arch}.dmg",
      verified: "github.com/EastSun5566/hackdesk/"
  name "HackDesk"
  desc "Hackable HackMD desktop application"
  homepage "https://hackdesk.eastsun.me/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "HackDesk.app"

  zap trash: [
    "~/.hackdesk",
    "~/Library/Application Support/eastsun5566.github.hackdesk",
    "~/Library/Caches/eastsun5566.github.hackdesk",
    "~/Library/Preferences/eastsun5566.github.hackdesk.plist",
    "~/Library/Saved Application State/eastsun5566.github.hackdesk.savedState",
  ]
end
