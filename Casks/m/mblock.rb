cask "mblock" do
  version "5.4.3"
  sha256 "719b808ba96b36ba811cb92a982b65c76b675df398426d53932e0b15d515177c"

  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.dmg",
      verified: "dl.makeblock.com/"
  name "mBlock"
  desc "Coding tool designed for teaching STEAM"
  homepage "https://www.mblock.cc/"

  no_autobump! because: :requires_manual_review

  disable! date: "2024-06-12", because: "now has the download artifact behind a signed URL"

  depends_on macos: ">= :sierra"

  app "mBlock.app"

  zap trash: [
    "~/Library/Application Support/mblock",
    "~/Library/Preferences/cc.mblock.plist",
    "~/Library/Saved Application State/cc.mblock.savedState",
    "~/mblock",
  ]
end
