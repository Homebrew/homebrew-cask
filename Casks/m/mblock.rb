cask "mblock" do
  version "5.4.2"
  sha256 "689d7d8210051277f4d4f4466d756f7bff98973e294efd552c14b973cafa17be"

  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.dmg",
      verified: "dl.makeblock.com/"
  name "mBlock"
  desc "Coding tool designed for teaching STEAM"
  homepage "https://www.mblock.cc/"

  livecheck do
    url "https://s.mblock.cc/download/pc-mac"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "mBlock.app"

  zap trash: [
    "~/Library/Application Support/mblock",
    "~/Library/Preferences/cc.mblock.plist",
    "~/Library/Saved Application State/cc.mblock.savedState",
    "~/mblock",
  ]
end
